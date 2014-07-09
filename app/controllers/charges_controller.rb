class ChargesController < ApplicationController
  def new
  end

  def create
    @order = Order.find(params[:order_id])
    @order_lines = OrderLine.where(order_id: @order)
    @first_pmt_amt = @order.first_payment_amt
    # Amount in cents
    @amount = @order.in_pennies(@first_pmt_amt)

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
    @confirmation_num = charge.id
    @order.submit(@confirmation_num)
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

end
