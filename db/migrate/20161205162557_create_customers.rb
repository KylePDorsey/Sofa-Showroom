class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name

      t.timestamps(null: false)
    end
  end
end
