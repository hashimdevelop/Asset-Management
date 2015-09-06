class CreateNetworkdetails < ActiveRecord::Migration
  def change
    create_table :networkdetails do |t|
      t.string :device_name, :model, :serial_no, :asset_tag, :used_for, :port_no
      t.timestamps
    end
  end
end
