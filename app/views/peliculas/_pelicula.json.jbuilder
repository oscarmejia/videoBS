json.extract! pelicula, :id, :nombre, :genero_id, :duracion, :calificacion, :disponibilidad, :estado_id, :ejemplares, :empleado_id, :created_at, :updated_at
json.url pelicula_url(pelicula, format: :json)
