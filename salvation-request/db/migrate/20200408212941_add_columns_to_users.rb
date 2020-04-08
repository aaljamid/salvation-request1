class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :city, :string
    add_column :users, :street_address, :string
    add_column :users, :phone, :string
    add_column :users, :role, :string
  end
end
