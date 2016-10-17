json.extract! empresa, :id, :nombre, :razon_social, :estatus, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)