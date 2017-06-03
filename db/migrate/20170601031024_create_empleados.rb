class CreateEmpleados < ActiveRecord::Migration[5.1]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellido
      t.string :documento
      t.string :email
      t.string :telefono
      t.string :direccion
      t.date :fechaNa
      t.date :fechaIn
      t.date :fechafin

      t.timestamps
    end
  end
end
