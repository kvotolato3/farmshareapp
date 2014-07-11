class ShareOption < ActiveRecord::Base
  # Adding a temporary instance variable.
  attr_accessor :line_amount
  attr_accessor :line_checked
  attr_accessor :line_quantity

  belongs_to :order_line
end
