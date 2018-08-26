json.extract! product, :id, :name, :web_price, :call_price, :category_id, :product_desc, :manufactors_name, :quantity, :created_at, :updated_at
json.url product_url(product, format: :json)
