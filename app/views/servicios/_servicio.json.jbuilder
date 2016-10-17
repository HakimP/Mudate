json.extract! servicio, :id, :desc_servicio, :costo, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)