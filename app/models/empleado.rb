class Empleado < ApplicationRecord
	has_many :peliculas
	def name
		self.nombre
	end
end
