class CreatePickupLocation < ActiveRecord::Migration
  def change
    create_table :pickup_locations do |t|
      t.text :name
      t.text :description
      t.text :address_1
      t.text :address_2
      t.text :city
      t.string :state
      t.string :zip
      t.string :day_of_week
      t.integer :start_time
      t.integer :end_time
      t.text :season
    end
  end
end
