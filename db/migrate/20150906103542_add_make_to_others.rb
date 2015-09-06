class AddMakeToOthers < ActiveRecord::Migration
  def change
    add_column :others, :category, :string
  end
end
