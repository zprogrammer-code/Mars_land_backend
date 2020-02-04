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

ActiveRecord::Schema.define(version: 2020_02_04_185443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mars_estates", force: :cascade do |t|
    t.float "price"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_mars_estates", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "mars_estate_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mars_estate_id"], name: "index_user_mars_estates_on_mars_estate_id"
    t.index ["user_id"], name: "index_user_mars_estates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.float "price_range"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_mars_estates", "mars_estates"
  add_foreign_key "user_mars_estates", "users"
end
