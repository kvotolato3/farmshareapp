$(document).ready(function(){
  $('#submit-button').click(CSASignup.saveOrder);
});

var CSASignup = CSASignup || {};

CSASignup.saveOrder = function() {
  var seasonalOptionId = $('input:checked[name=seasonal_share]').val();
  var extraOptionsCollection = $('input:checked[name=extra_share]');
  var extraOptionsArray = [];
  var orderId = $('input[name=order_id]').val();
  var seasonalPrice = $('#' + seasonalOptionId +' :input[name=seasonal_price]').val();
  var seasonalQuantity = $('#' + seasonalOptionId +' :input[name=seasonal_quantity]').val();
  var pickupId = $('input:checked[name=pickup_location]').val();
  var paymentPlan = $('#payment_plan option:selected' ).text();
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
    var pair = [];
    var id = $(this).val();
    var quantity = $('#' + id +' :input[name=quantity]').val();
    pair.push(id);
    pair.push(quantity);
    extraOptionsArray.push(pair);
  });


  $.ajax({
      url: '/order_lines/',
      type: 'POST',
      data: {"seasonal_id": seasonalOptionId,
      "extra_ids": extraOptionsArray,
      "order_id": orderId,
      "seasonal_price": seasonalPrice,
      "seasonal_quantity": seasonalQuantity}
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
        "email":email}},
      dataType: 'json'
    }).done(CSASignup.reviewOrder);
};

CSASignup.reviewOrder = function(result) {
  window.location.replace("/orders/" + result.id);
};


