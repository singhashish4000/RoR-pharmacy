class AddReferenceProductDescInMiddlewareTable < ActiveRecord::Migration
  def change
    add_reference :product_description, :middlewares, index: true
  end
end
