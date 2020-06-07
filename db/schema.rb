# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_07_220605) do

  create_table "projeto_bd_clientes", force: :cascade do |t|
    t.integer "index"
    t.string "nome"
    t.string "descricao"
    t.date "dataInicial"
    t.date "previsaoEntrega"
    t.string "status"
    t.float "orcamento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projeto_bd_estoques", force: :cascade do |t|
    t.integer "index"
    t.string "componente"
    t.integer "quantidade"
    t.float "valor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
