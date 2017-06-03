class CreatePeliculas < ActiveRecord::Migration[5.1]
  def change
    create_table :peliculas do |t|
      t.string :nombre
      t.references :genero, foreign_key: true
      t.time :duracion
      t.string :calificacion
      t.boolean :disponibilidad
      t.references :estado, foreign_key: true
      t.string :ejemplares
      t.references :empleado, foreign_key: true

      t.timestamps
    end
  end
end
