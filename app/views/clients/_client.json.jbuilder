json.extract! client, :id, :name, :address, :nit, :phone, :created_at, :updated_at
json.url client_url(client, format: :json)
