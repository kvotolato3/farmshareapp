class OrderLine < ActiveRecord::Base
  belongs_to :share_option
  belongs_to :order
end
