class RemoveMiddlewaresFromProductDescriptions < ActiveRecord::Migration
  def change
    remove_reference :product_descriptions, :middlewaress, index: true, foreign_key: true
  end
end
