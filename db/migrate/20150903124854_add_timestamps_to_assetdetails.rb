class AddTimestampsToAssetdetails < ActiveRecord::Migration
  def change
    add_column(:assetdetails, :created_at, :datetime)
    add_column(:assetdetails, :updated_at, :datetime)
  end
end
