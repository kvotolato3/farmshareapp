class ShareOptionsController < ApplicationController
  def index
    @share_options = ShareOption.all

    if params[:order_id]
      @order = Order.find(params[:order_id])
      @order_lines = OrderLine.where(order_id: @order.id)
      # Set the `order_number` attribute if applicable.
      @share_options.each do |sop|
        if order_line = @order_lines.detect {|line| line.share_option_id == sop.id}
          sop.line_amount = order_line.price
          sop.line_checked = 'checked'
          sop.line_quantity = order_line.quantity
        end
      end
    end
  end

  def show
    @share_option = ShareOption.find(params[:id])
  end
end
