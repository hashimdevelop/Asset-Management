class Mobiledevice < ActiveRecord::Base
    
    searchable do
        text :model
    end
    
    validates :device_name, :model, :serial_no, :asset_tag, :date_of_purchase, :warranty, :os, presence: true
end
