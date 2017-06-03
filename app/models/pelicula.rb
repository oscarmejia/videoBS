class Pelicula < ApplicationRecord
	def name
		self.nombre
	end
  belongs_to :genero
  belongs_to :estado
  belongs_to :empleado
end
