$(document).ready(function(){
  $('#submit-button').click(CSASignup.saveOrder);
});

var CSASignup = CSASignup || {};

CSASignup.saveOrder = function() {
  var seasonalOptionId = $('input:checked[name=seasonal_share]').val();
  var extraOptionsCollection = $('input:checked[name=extra_share]');
  var extraOptionsArray = [];
  var orderId = 2;
  extraOptionsCollection.each(function(i){extraOptionsArray[i] = $(this).val();
  });


  $.ajax({
      url: '/order_lines/',
      type: 'POST',
      data: {"seasonal_id": seasonalOptionId,
      "extra_ids": extraOptionsArray,
      "order_id": orderId}
    });
};


