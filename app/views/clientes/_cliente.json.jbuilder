json.extract! cliente, :id, :documento, :nombre, :apellido, :fechan, :telefono, :direccion, :pelicula_id, :empleado_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
