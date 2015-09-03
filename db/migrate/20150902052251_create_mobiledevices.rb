class CreateMobiledevices < ActiveRecord::Migration
  def change
    create_table :mobiledevices do |t|
      t.string :device_name
      t.string :model
      t.string :serial_no
      t.string :asset_tag
      t.date :date_of_purchase
      t.integer :warranty
      t.string :os
      t.string :used_by
      t.timestamps
    end
  end
end
