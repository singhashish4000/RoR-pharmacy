class CreateMiddlewares < ActiveRecord::Migration
  def change
    create_table :middlewares do |t|
      t.references :product, index: true, foreign_key: true
      t.string :quantity
      t.float :web_price
      t.string :web_price_desc
      t.string :phone_price
      t.string :phone_price_desc

      t.timestamps null: false
    end
  end
end
