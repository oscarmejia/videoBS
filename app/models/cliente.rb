class Cliente < ApplicationRecord
  belongs_to :pelicula
  belongs_to :empleado
end
