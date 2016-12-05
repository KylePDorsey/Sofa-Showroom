class CreateSofas < ActiveRecord::Migration[5.0]
  def change
    create_table :sofas do |t|
      t.string :style_family
      t.string :configuration
      t.string :fabric_type
      t.string :fabric_style
      t.string :leg_style
      t.integer :customer_id

      t.timestamps(null: false)
    end
  end
end
