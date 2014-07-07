class OrdersController < ApplicationController
before_action :set_order, only: [:show, :edit, :update, :destroy]

def show
end

def edit
  @SeasonalShareOptions = ShareOption.where(is_season: true)
  @ExtraShareOptions = ShareOption.where(is_season: false)
  @PickupLocations = PickupLocation.all
end

def update
end

def destroy
end

def new
  @order = Order.create
  redirect_to edit_order_path(@order)
end

def create
end

private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:payment_plan, :total_amt, :pickup_location_id)
  end
end
