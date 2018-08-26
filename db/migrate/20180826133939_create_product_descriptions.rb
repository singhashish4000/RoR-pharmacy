class CreateProductDescriptions < ActiveRecord::Migration
  def change
    create_table :product_descriptions do |t|
      t.string :desc
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
