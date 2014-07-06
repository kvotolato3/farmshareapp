class AddMinAndMaxPriceToShareOptions < ActiveRecord::Migration
  def change
    add_column :share_options, :max_price, :decimal, precision: 6, scale: 2
    add_column :share_options, :min_price, :decimal, precision: 6, scale: 2
  end
end
