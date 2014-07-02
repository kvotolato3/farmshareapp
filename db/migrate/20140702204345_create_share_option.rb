class CreateShareOption < ActiveRecord::Migration
  def change
    create_table :share_options do |t|
      t.text :name
      t.text :image_url
      t.text :description
      t.decimal :price, precision: 6, scale: 2
      t.date :start_date
      t.date :end_date
      t.integer :num_of_distributions
    end
  end
end
