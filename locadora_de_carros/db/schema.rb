# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_15_175705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carros", force: :cascade do |t|
    t.datetime "ano"
    t.string "marca"
    t.string "cor"
    t.string "modelo"
    t.float "km"
    t.boolean "revisao"
    t.float "diaria"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emprestimos", force: :cascade do |t|
    t.datetime "data_check_in"
    t.datetime "data_check_out"
    t.float "limite_km"
    t.string "wepay_access_token"
    t.integer "wepay_account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locatario_carros", force: :cascade do |t|
    t.integer "locatario_id"
    t.integer "carro_id"
    t.boolean "pagamento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locatarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "senha"
    t.string "endereco"
    t.datetime "data_nascimento"
    t.string "telefone"
    t.string "sexo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_locatarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_locatarios_on_reset_password_token", unique: true
  end

end
