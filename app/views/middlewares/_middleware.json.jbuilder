json.extract! middleware, :id, :product_id, :quantity, :web_price, :web_price_desc, :phone_price, :phone_price_desc, :created_at, :updated_at
json.url middleware_url(middleware, format: :json)
