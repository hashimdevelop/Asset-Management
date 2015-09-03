class Mondetail < ActiveRecord::Base
   
    validates :monitor, :monitor_tag, :monitor_size, :mouse, :mouse_tag, :keyboard, :keyboard_tag, :installed_os, presence: true
end