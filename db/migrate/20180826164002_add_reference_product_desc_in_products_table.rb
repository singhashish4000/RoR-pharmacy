class AddReferenceProductDescInProductsTable < ActiveRecord::Migration
  def change
    add_reference :products, :product_description, index: true
  end
end
