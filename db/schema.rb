# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170602011548) do

  create_table "clientes", force: :cascade do |t|
    t.string "documento"
    t.string "nombre"
    t.string "apellido"
    t.date "fechan"
    t.string "telefono"
    t.string "direccion"
    t.integer "pelicula_id"
    t.integer "empleado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empleado_id"], name: "index_clientes_on_empleado_id"
    t.index ["pelicula_id"], name: "index_clientes_on_pelicula_id"
  end

  create_table "empleados", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "documento"
    t.string "email"
    t.string "telefono"
    t.string "direccion"
    t.date "fechaNa"
    t.date "fechaIn"
    t.date "fechafin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peliculas", force: :cascade do |t|
    t.string "nombre"
    t.integer "genero_id"
    t.time "duracion"
    t.string "calificacion"
    t.boolean "disponibilidad"
    t.integer "estado_id"
    t.string "ejemplares"
    t.integer "empleado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empleado_id"], name: "index_peliculas_on_empleado_id"
    t.index ["estado_id"], name: "index_peliculas_on_estado_id"
    t.index ["genero_id"], name: "index_peliculas_on_genero_id"
  end

end
