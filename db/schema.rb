# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161101041752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "caracteristicas", force: :cascade do |t|
    t.integer  "servicio_id"
    t.string   "descripcion"
    t.boolean  "estatus"
    t.float    "costo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "caracteristicas", ["servicio_id"], name: "index_caracteristicas_on_servicio_id", using: :btree

  create_table "empresa_servicios", force: :cascade do |t|
    t.integer  "empresa_id"
    t.integer  "servicio_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "empresa_servicios", ["empresa_id"], name: "index_empresa_servicios_on_empresa_id", using: :btree
  add_index "empresa_servicios", ["servicio_id"], name: "index_empresa_servicios_on_servicio_id", using: :btree

  create_table "empresas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "razon_social"
    t.boolean  "estatus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string   "desc_servicio"
    t.float    "costo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "solicituds", force: :cascade do |t|
    t.integer  "folio"
    t.datetime "fecha_cita"
    t.datetime "fech_inicio"
    t.datetime "fecha_fin"
    t.datetime "fecha_entrega_caja"
    t.integer  "empresa_servicio_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "direccion_destino"
    t.string   "direccion_origen"
  end

  add_index "solicituds", ["empresa_servicio_id"], name: "index_solicituds_on_empresa_servicio_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "caracteristicas", "servicios"
  add_foreign_key "empresa_servicios", "empresas"
  add_foreign_key "empresa_servicios", "servicios"
  add_foreign_key "solicituds", "empresa_servicios"
end
