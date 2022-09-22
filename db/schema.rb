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

ActiveRecord::Schema[7.0].define(version: 2022_09_15_173150) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "performers", force: :cascade do |t|
    t.string "name", null: false
    t.string "wechat_id"
    t.string "email", null: false
    t.integer "p_times"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "signups", force: :cascade do |t|
    t.bigint "performer_id", null: false
    t.date "perform_date", null: false
    t.integer "round", null: false
    t.string "wechat_id"
    t.string "email", null: false
    t.boolean "first_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["performer_id"], name: "index_signups_on_performer_id"
  end

  add_foreign_key "signups", "performers"
end
