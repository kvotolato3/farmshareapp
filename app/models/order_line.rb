class OrderLine < ActiveRecord::Base
  belongs_to :share_option
  belongs_to :order

  def share_name
    ShareOption.find(self.share_option.id).name
  end

  def ext_amt
    self.quantity * self.price
  end
end
