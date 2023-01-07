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

ActiveRecord::Schema[7.0].define(version: 2022_12_27_164307) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expense_trackers", force: :cascade do |t|
    t.date "date"
    t.text "description"
    t.float "amount"
    t.bigint "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_expense_trackers_on_trip_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "place_name"
    t.date "start_date"
    t.date "end_date"
    t.bigint "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_routes_on_trip_id"
  end

  create_table "trip_notes", force: :cascade do |t|
    t.text "note"
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_trip_notes_on_route_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "title"
    t.text "note"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "expense_trackers", "trips"
  add_foreign_key "routes", "trips"
  add_foreign_key "trip_notes", "routes"
end
