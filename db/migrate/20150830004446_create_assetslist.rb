class CreateAssetslist < ActiveRecord::Migration
  def change
    create_table :assetslists do |t|
      t.string   "name"
      t.string   "model"
      t.string   "serial_no"
      t.string   "asset_tag"
      t.date     "date_of_purchase"
      t.integer  "warranty"
      t.datetime "created_at"
      t.datetime "updated_at" 
    end
  end
end
