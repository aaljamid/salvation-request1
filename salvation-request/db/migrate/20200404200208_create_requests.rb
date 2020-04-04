class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.integer :zip_code
      t.integer :phone

      t.timestamps
    end
  end
end
