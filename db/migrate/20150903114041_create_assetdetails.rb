class CreateAssetdetails < ActiveRecord::Migration
  def change
    create_table :assetdetails do |t|
      t.string :name, :model, :serial_no, :asset_tag, :monitor_model, :monitor_tag
      t.string :mouse, :mouse_tag, :keyboard, :keyboard_tag, :installed_os
      t.date :date_of_purchase
      t.integer :warranty, :monitor_size
    end
  end
end
