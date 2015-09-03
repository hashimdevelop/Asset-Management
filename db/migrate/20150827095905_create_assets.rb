class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.string :model
      t.string :serial_no
      t.string :asset_tag
      t.date  :date_of_purchase
      t.integer :warranty
      t.timestamps
    end
  end
end
