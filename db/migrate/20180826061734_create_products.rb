class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :web_price
      t.string :call_price
      t.references :category, index: true, foreign_key: true
      t.string :product_desc
      t.string :manufactors_name
      t.float :quantity

      t.timestamps null: false
    end
  end
end
