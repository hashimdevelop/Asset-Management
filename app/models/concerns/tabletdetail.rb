class Tabletdetail < ActiveRecord::Base
  
  validates :device_name, :model, :serial_no, :asset_tag, :date_of_purchase, :warranty, :os, :used_by, presence: true
    

    def self.search(query)
        # where(:title, query) -> This would return an exact match of the query
        where("device_name like ?", "%#{query}%") 
    end
end