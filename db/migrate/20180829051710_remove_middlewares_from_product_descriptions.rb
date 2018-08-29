class RemoveMiddlewaresFromProductDescriptions < ActiveRecord::Migration
  def change
    remove_reference :product_descriptions, :middlewares, index: true, foreign_key: true
  end
end
