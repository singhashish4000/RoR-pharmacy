class AddMiddlewareToProductDescriptions < ActiveRecord::Migration
  def change
    add_reference :product_descriptions, :middleware, index: true, foreign_key: true
  end
end
