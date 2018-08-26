class AddReferenceProductDescInMiddlewareTable < ActiveRecord::Migration
  def change
    add_reference :middlewares, :product_description, index: true
  end
end
