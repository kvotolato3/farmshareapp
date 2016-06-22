$(document).ready(function(){
  $('.navbar-nav li').click(CSASignup.highlightActive);
});
var CSASignup = CSASignup || {};

CSASignup.getShareOptions = function() {
  $.ajax({
    data: {
      order_id: $('input[name=order_id]').val()
    },
    url:'/share_options.json',
    type: 'GET'
  }).done(CSASignup.displayShareOptions);
};

CSASignup.displayShareOptions = function(options) {
  var arrayLength = options.length;
  for (var i = 0; i < arrayLength; i = i + 1) {
    var option = options[i];
    if (option.is_season === true) {
      // Handlebars template in edit.html.erb
      var source = $('#seasonal_options_template').html();
      var template = Handlebars.compile(source);
      var seasonal_options_html = template(option);
      $('#seasonal-options').append(seasonal_options_html);

      if (option.line_checked === "checked") {
        CSASignup.displaySharePriceQty(option);
      }
    }
  }
  $('input[name=seasonal_share]').change(CSASignup.getSharePriceQty);
};

CSASignup.getSharePriceQty = function() {
  var shareId = $('input[name=seasonal_share]:checked').val();
  $.ajax({
    url: '/share_options/' + shareId + '.json',
    type: 'GET'
  }).success(CSASignup.displaySharePriceQty);
};

CSASignup.displaySharePriceQty = function(option) {
  //Clears DOM element
  $('#seasonal-price-qty').empty();
  if (option.line_checked !== null) {
    option.price = option.line_amount
  };

  // Handlebars template in edit.html.erb
  // Adds selected price & quantity inputs to DOM
  var source = $('#seasonal_price_qty').html();
  var template = Handlebars.compile(source);
  var seasonal_price_qty = template(option);
  $('#seasonal-price-qty').append(seasonal_price_qty);
};

CSASignup.saveOrder = function() {
  if (form.valid()=== true) {
    var seasonalOptionId = $('input:checked[name=seasonal_share]').val();
    var extraOptionsCollection = $('input:checked[name=extra_share]');
    var extraOptionsArray = [];
    var orderId = $('input[name=order_id]').val();
    var seasonalPrice = $('input[name=seasonal_price]').val();
    var seasonalQuantity = $('input[name=seasonal_quantity]').val();
    var pickupId = $('input:checked[name=pickup_location]').val();
    var paymentPlan = $('#payment_plan option:selected').val();
    var firstName = $('input[name=firstname]').val();
    var lastName = $('input[name=lastname]').val();
    var addressOne = $('input[name=address_1]').val();
    var addressTwo = $('input[name=address_2]').val();
    var city = $('input[name=city]').val();
    var state = $('input[name=state]').val();
    var zip = $('input[name=zip]').val();
    var phone = $('input[name=phone]').val();
    var email = $('input[name=email]').val();

    extraOptionsCollection.each(function(){
      var id = $(this).val();
      var quantity = $('#' + id +' :input[name=quantity]').val();
      var pair = new ExtraOption(id, quantity);
      extraOptionsArray.push(pair);
    });

    $.ajax({
      url: '/orders/' + orderId,
        type: 'PATCH',
        data: {"order" : {"pickup_location_id": pickupId,
              "payment_plan":paymentPlan,
              "first_name":firstName,
              "last_name":lastName,
              "address_1":addressOne,
              "address_2":addressTwo,
              "city":city,
              "state":state,
              "zip":zip,
              "phone":phone,
              "email":email},
              "order_lines": {"seasonal_option": {"id":seasonalOptionId, "price":seasonalPrice, "quantity": seasonalQuantity},
              "extra_options": extraOptionsArray}
        },
        dataType: 'json'
    }).done(CSASignup.reviewOrder);
  }
  else {
    alert('Please correct highlighted fields');
  }
};

CSASignup.reviewOrder = function(result) {
  window.location.replace("/orders/" + result.id);
};

CSASignup.highlightActive = function(event) {
  var $target = $( event.target );

  //Find the active list item and remove active class
  $('li.active').removeClass('active');

  //Add active class to the target list item
  $target.parent().addClass('active');

  //Why is this going back to its original state after executing this code?
};


