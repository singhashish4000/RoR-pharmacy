class AddColumnActiveIngriedientInProductsTable < ActiveRecord::Migration
  def change
    add_reference :products, :active_ingredient, index: true
  end
end
