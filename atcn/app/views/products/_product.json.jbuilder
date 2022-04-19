json.extract! product, :id, :name, :quantity, :description, :created_at, :updated_at
json.url company_products_url(product, format: :json)
