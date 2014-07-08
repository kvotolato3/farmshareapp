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
      data: {"pickup_id": pickupId}
    });

};

