class Mondetail < ActiveRecord::Base
    validates :monitor, :monitor_tag, :monitor_size, :mouse, :mouse_tag, :keyboard, :keyboard_tag, :installed_os, presence: true
    
    def self.search(query)
        # where(:title, query) -> This would return an exact match of the query
        where("monitor like ?", "%#{query}%") 
    end
end