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

ActiveRecord::Schema.define(version: 2021_08_24_201921) do

  create_table "medical_use_strains", force: :cascade do |t|
    t.integer "medical_use_id"
    t.integer "strain_id"
    t.index ["medical_use_id"], name: "index_medical_use_strains_on_medical_use_id"
    t.index ["strain_id"], name: "index_medical_use_strains_on_strain_id"
  end

  create_table "medical_uses", force: :cascade do |t|
    t.string "name"
  end

  create_table "strains", force: :cascade do |t|
    t.string "strain"
    t.string "buzzword"
    t.string "cannabinoid"
    t.string "health_benefit"
    t.string "image_url"
  end

  add_foreign_key "medical_use_strains", "medical_uses"
  add_foreign_key "medical_use_strains", "strains"
end
