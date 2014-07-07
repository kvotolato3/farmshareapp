class OrderLinesController < ApplicationController

  def create
    seasonal_id = params["seasonal_id"]
    extra_ids = params["extra_ids"]
    order_id = params["order_id"]
    OrderLine.create(order_id: order_id, share_option_id: seasonal_id)

    extra_ids.each do |extra_id|
      OrderLine.create(order_id: order_id, share_option_id: extra_id)
    end

  end
end


