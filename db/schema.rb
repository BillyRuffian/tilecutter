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

ActiveRecord::Schema.define(version: 2018_11_27_152705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.decimal "area"
    t.bigint "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "ground_floor"
    t.index ["house_id"], name: "index_rooms_on_house_id"
  end

  create_table "scheme_tiles", force: :cascade do |t|
    t.decimal "ratio"
    t.bigint "tile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scheme_id"
    t.string "surface"
    t.index ["tile_id"], name: "index_scheme_tiles_on_tile_id"
  end

  create_table "schemes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tiles", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "per_box"
    t.decimal "per_square_meter"
  end

  add_foreign_key "rooms", "houses"
  add_foreign_key "scheme_tiles", "tiles"
end
