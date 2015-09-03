class List < ActiveRecord::Base
  
    validates :name, :model, :serial_no, :asset_tag, :warranty, :date_of_purchase, presence: true
    
    
    
    def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << column_names
        all.each do |list|
          csv << list.attributes.values_at(*column_names)
        end
      end
    end


end
