class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :documento
      t.string :nombre
      t.string :apellido
      t.date :fechan
      t.string :telefono
      t.string :direccion
      t.references :pelicula, foreign_key: true
      t.references :empleado, foreign_key: true

      t.timestamps
    end
  end
end
