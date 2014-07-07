class OrderLinesController < ApplicationController

  def create
    seasonal_id = params["seasonal_id"]
    extra_ids = params["extra_ids"]
    order_id = params["order_id"]
    seasonal_price = params["seasonal_price"]
    seasonal_quantity = params["seasonal_quantity"]
    OrderLine.create(order_id: order_id, share_option_id: seasonal_id, price: seasonal_price, quantity: seasonal_quantity)

    extra_ids.each do |index|
      id = index[1][0]
      price = ShareOption.find(id).price
      quantity = index[1][1]
      OrderLine.create(order_id: order_id, share_option_id: id, price: price, quantity: quantity)
    end

  end
end


