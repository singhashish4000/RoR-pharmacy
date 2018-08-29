class AddReferenceMiddlewareInPdTable < ActiveRecord::Migration
  def change
    add_reference :product_descriptions, :middlewares, index: true
  end
end
