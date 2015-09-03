class AddDateOfPurchaseToLists < ActiveRecord::Migration
  def change
    add_column :lists, :date_of_purchase, :date
  end
end
