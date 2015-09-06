class CreateScannerdetails < ActiveRecord::Migration
  def change
    create_table :scannerdetails do |t|
      t.string :device_name
      t.string :model
      t.string :serial_no
      t.string :asset_tag
      t.string :used_by
      t.timestamps
    end
  end
end
