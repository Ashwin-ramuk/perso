json.extract! company, :id, :name, :address, :description, :slogan, :created_at, :updated_at
json.url company_url(company, format: :json)
