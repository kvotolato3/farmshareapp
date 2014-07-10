class Order < ActiveRecord::Base
  has_many :order_lines

  def full_name
    self.first_name + " " + self.last_name
  end

  def city_st_zip
    self.city + ", " + self.state + ", " + self.zip
  end

  def subtotal
    running_total = []
    OrderLine.where(order_id: self.id).each do |order_line|
      running_total << order_line.ext_amt
    end
    return running_total.sum
  end

  def first_payment_amt
    if self.payment_plan == "Pay in full today"
      return self.subtotal
    else
      return 100.00
    end
  end

  def in_pennies(dollars)
    (dollars * 100).to_i
  end

  def submit(stripe_id)
    self.submitted_at = Time.now
    self.save
  end

  def update_lines(seasonal_hash, extra_hash)
    self.order_lines.destroy_all
    order_id = self.id
    OrderLine.create(order_id: order_id, share_option_id: seasonal_hash["id"], price: seasonal_hash["price"], quantity: seasonal_hash["quantity"])
    if extra_hash != nil
      extra_hash.each do |index|
        id = index[1][0]
        price = ShareOption.find(id).price
        quantity = index[1][1]
        OrderLine.create(order_id: order_id, share_option_id: id, price: price, quantity: quantity)
      end
    end
  end
end












