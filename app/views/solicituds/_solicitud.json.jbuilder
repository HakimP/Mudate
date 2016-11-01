json.extract! solicitud, :id, :folio, :fecha_cita, :fech_inicio, :fecha_fin, :fecha_entrega_caja, :empresa_servicio_id, :created_at, :updated_at, :direccion_destino
json.url solicitud_url(solicitud, format: :json)
