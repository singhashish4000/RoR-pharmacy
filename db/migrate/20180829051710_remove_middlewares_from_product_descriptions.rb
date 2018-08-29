class RemoveMiddlewaresFromProductDescriptions < ActiveRecord::Migration
  def change
    remove_column :product_descriptions, :middlewares_id 
  end
end
