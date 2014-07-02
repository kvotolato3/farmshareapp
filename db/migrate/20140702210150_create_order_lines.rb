class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.references :order
      t.references :share_option
      t.integer :quantity
      t.decimal :price, precision: 6, scale: 2
      t.timestamps
    end
  end
end
