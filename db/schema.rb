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

ActiveRecord::Schema.define(version: 20171121031050) do

  create_table "anexos", force: :cascade do |t|
    t.integer "idTipoAnexo"
    t.string "nombreArchivo"
    t.string "ruta"
    t.integer "idEstadoAnexo"
    t.integer "idEntidad"
    t.integer "idTipoEntidad"
    t.binary "eliminado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consumos", force: :cascade do |t|
    t.integer "idConsumo"
    t.integer "idEquipo"
    t.integer "idPersona"
    t.integer "idProveedor"
    t.datetime "fecha"
    t.float "valor"
    t.string "comentario"
    t.integer "idTipoConsumo"
    t.integer "idEstadoConsumo"
    t.integer "idCategoriaConsumo"
    t.float "kilometraje"
    t.integer "cant"
    t.integer "idUnidadMedida"
    t.integer "idRubro"
    t.integer "numFactura"
    t.integer "idUsuario"
    t.binary "eliminado"
    t.integer "idFacturas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipos", force: :cascade do |t|
    t.integer "idEquipo"
    t.string "placa"
    t.string "modelo"
    t.string "serie"
    t.string "marca"
    t.integer "idEstadoEquipo"
    t.integer "idTipoEquipo"
    t.integer "idArea"
    t.binary "eliminado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.integer "numFactura"
    t.datetime "fecha"
    t.string "concepto"
    t.float "valor"
    t.string "comentarioFactura"
    t.integer "idEstadoFactura", limit: 8
    t.binary "eliminado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "idProveedor"
  end

  create_table "opciones", force: :cascade do |t|
    t.integer "idpadre"
    t.string "opcion"
    t.string "url"
    t.string "estadoopcion"
    t.string "orden"
    t.boolean "eshoja"
    t.string "controller"
    t.integer "eliminado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parametros", force: :cascade do |t|
    t.string "atributo"
    t.string "descripcion"
    t.string "estadoParametro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "identificacion"
    t.string "correo"
    t.integer "idEstadoPersona"
    t.integer "idTipoPersona"
    t.integer "idArea"
    t.integer "idCargo"
    t.integer "idTipoIdentificacion"
    t.binary "eliminado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proveedores", force: :cascade do |t|
    t.integer "idProveedor"
    t.string "identificacion"
    t.string "nombre"
    t.integer "idCiudad"
    t.integer "idDpto"
    t.string "direccion"
    t.string "correo"
    t.string "telefonos"
    t.integer "idTipoProv"
    t.integer "idEstadoProv"
    t.integer "idCategoriaProv"
    t.string "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rol_opcion_operaciones", force: :cascade do |t|
    t.integer "idrol"
    t.integer "idoperacion"
    t.integer "eliminado", default: 0
    t.string "estadorolop"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "opcione_id"
    t.integer "usuario_id"
    t.index ["opcione_id"], name: "index_rol_opcion_operaciones_on_opcione_id"
    t.index ["usuario_id"], name: "index_rol_opcion_operaciones_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "usuario"
    t.integer "idrol"
    t.integer "idestadousuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "eliminado", default: 0
    t.string "password"
  end

  create_table "valor_parametros", force: :cascade do |t|
    t.integer "parametroId"
    t.string "valor"
    t.string "orden", limit: 3
    t.string "estadoValorParametro", limit: 1
    t.integer "eliminado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parametro_id"
    t.index ["parametro_id"], name: "index_valor_parametros_on_parametro_id"
  end

end
