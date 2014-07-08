class AddDefaultQuantityAndPriceToOrderLines < ActiveRecord::Migration
  def up
    change_table :order_lines do |t|
      t.change :price, :decimal, precision: 6, scale: 2, default: 0
      t.change :quantity, :integer, default: 0
    end
  end

  def down
    change_table :order_lines do |t|
      t.change :price, :decimal, precision: 6, scale: 2
      t.change :quantity, :integer
    end
  end
end
