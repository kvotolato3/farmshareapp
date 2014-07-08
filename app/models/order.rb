class Order < ActiveRecord::Base
  has_many :order_lines

  def full_name
    self.first_name + self.last_name
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
    if self.payment_plan == "full"
      return self.subtotal
    else
      return 100.00
    end
  end

end
