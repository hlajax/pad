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

ActiveRecord::Schema.define(version: 2020_02_09_221505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "declarations", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "date_de_naissance"
    t.string "heure_de_naissance"
    t.string "lieu_de_naissance"
    t.string "sexe"
    t.string "nom_pere"
    t.string "adresse_pere"
    t.string "date_de_naissance_pere"
    t.string "lieu_de_naissnce_pere"
    t.string "profession_pere"
    t.string "telephone_pere"
    t.string "nationalite_pere"
    t.string "coutume_pere"
    t.string "piece_pere"
    t.string "nom_mere"
    t.string "adresse_mere"
    t.string "date_de_naissance_mere"
    t.string "lieu_de_naissnce_mere"
    t.string "profession_mere"
    t.string "telephone_mere"
    t.string "nationalite_mere"
    t.string "coutume_mere"
    t.string "piece_mere"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lamairies", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string "libelle"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
