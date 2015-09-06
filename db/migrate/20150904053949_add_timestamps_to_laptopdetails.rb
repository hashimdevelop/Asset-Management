class AddTimestampsToLaptopdetails < ActiveRecord::Migration
  def change
     add_column(:laptopdetails, :created_at, :datetime)
     add_column(:laptopdetails, :updated_at, :datetime)
  end
end
