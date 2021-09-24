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

ActiveRecord::Schema.define(version: 2021_09_24_210112) do

  create_table "autors", force: :cascade do |t|
    t.string "nombre_autor", null: false
    t.string "username", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fotografia", force: :cascade do |t|
    t.string "nombre_foto", null: false
    t.integer "autor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autor_id"], name: "index_fotografia_on_autor_id"
  end

  create_table "producto_has_fotografia", force: :cascade do |t|
    t.integer "producto_id", null: false
    t.integer "fotografia_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fotografia_id"], name: "index_producto_has_fotografia_on_fotografia_id"
    t.index ["producto_id"], name: "index_producto_has_fotografia_on_producto_id"
  end

  create_table "producto_has_tecnicas", force: :cascade do |t|
    t.integer "producto_id", null: false
    t.integer "tecnica_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id"], name: "index_producto_has_tecnicas_on_producto_id"
    t.index ["tecnica_id"], name: "index_producto_has_tecnicas_on_tecnica_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "tipo_producto", null: false
    t.string "nombre_producto", null: false
    t.string "unidades", null: false
    t.string "precio_producto", null: false
    t.string "tecnica", null: false
    t.string "fotografia", null: false
    t.integer "tipo_producto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_producto_id"], name: "index_productos_on_tipo_producto_id"
  end

  create_table "tecnicas", force: :cascade do |t|
    t.string "nombre_tecnica", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_productos", force: :cascade do |t|
    t.string "nombre_tipo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
