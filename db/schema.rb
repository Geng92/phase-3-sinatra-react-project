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

ActiveRecord::Schema.define(version: 2022_11_15_165448) do

  create_table "destinations", force: :cascade do |t|
    t.string "location"
    t.string "climate"
    t.string "image"
    t.integer "population"
    t.boolean "visited?"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "traveler_id"
    t.integer "destination_id"
  end

  create_table "travelers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "image"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "date"
    t.integer "traveler_id"
    t.integer "destination_id"
    t.string "image"
  end

end
