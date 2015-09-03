class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :model
      t.string :serial_no
      t.string :asset_tag
      t.integer :warranty
      t.timestamps
    end
  end
end
