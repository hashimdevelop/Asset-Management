class CreateMonitors < ActiveRecord::Migration
  def change
    create_table :monitors do |t|
      t.string :monitor_model
      t.string :monitor_tag
      t.string :monitor_size
      t.string :mouse
      t.string :mouse_tag
      t.string :keyboard
      t.string :keyboard_tag
      t.string :installed_os
      t.timestamps
    end
  end
end
