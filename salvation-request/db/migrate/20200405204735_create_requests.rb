class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :request_type
      t.string :request_description
      t.string :request_status

      t.timestamps
    end
  end
end
