class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :payment_plan
      t.decimal :total_amt, precision: 6, scale: 2
      t.references :pickup_location
      t.datetime :submitted_at
      t.datetime :paid_at
      t.timestamps
    end
  end
end
