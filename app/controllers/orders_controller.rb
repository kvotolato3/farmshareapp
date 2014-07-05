class OrdersController < ApplicationController

def new
  @SeasonalShareOptions = ShareOption.where(is_season: true)
  @ExtraShareOptions = ShareOption.where(is_season: false)
end

private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:payment_plan, :total_amt, :pickup_location_id)
  end
end
