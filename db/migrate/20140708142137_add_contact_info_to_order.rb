class AddContactInfoToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :first_name, :text
    add_column :orders, :last_name, :text
    add_column :orders, :address_1, :text
    add_column :orders, :address_2, :text
    add_column :orders, :city, :text
    add_column :orders, :state, :string
    add_column :orders, :zip, :string
    add_column :orders, :phone, :string
    add_column :orders, :email, :text
  end
end
