json.extract! product, :id, :title, :description, :price, :img_url, :brand, :category, :created_at, :updated_at
json.url product_url(product, format: :json)
