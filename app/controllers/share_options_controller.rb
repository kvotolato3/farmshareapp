class ShareOptionsController < ApplicationController
  def index
    @order = Order.find(params[:order_id])
    @share_options = ShareOption.all
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
