class OrderLinesController < ApplicationController

  def create
    seasonal_id = params["seasonal_id"]
    extra_ids = params["extra_ids"]
    order_id = params["order_id"]
    seasonal_price = params["seasonal_price"]
    OrderLine.create(order_id: order_id, share_option_id: seasonal_id, price: seasonal_price)

    extra_ids.each do |extra_id|
      price = ShareOption.find(extra_id).price
      OrderLine.create(order_id: order_id, share_option_id: extra_id, price: price)
    end

  end
end


