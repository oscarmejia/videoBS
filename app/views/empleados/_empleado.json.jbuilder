json.extract! empleado, :id, :nombre, :apellido, :documento, :email, :telefono, :direccion, :fechaNa, :fechaIn, :fechafin, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
