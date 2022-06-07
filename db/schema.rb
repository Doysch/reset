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

ActiveRecord::Schema[7.0].define(version: 2022_06_07_113633) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "greenspaces", force: :cascade do |t|
    t.string "location"
    t.string "description"
    t.string "photo"
    t.float "average_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.bigint "users_id", null: false
    t.float "rating"
    t.bigint "greenspaces_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["greenspaces_id"], name: "index_reviews_on_greenspaces_id"
    t.index ["users_id"], name: "index_reviews_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "walks", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "greenspaces_id", null: false
    t.string "music"
    t.text "notes"
    t.integer "stress_level_before"
    t.integer "stress_level_after"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["greenspaces_id"], name: "index_walks_on_greenspaces_id"
    t.index ["users_id"], name: "index_walks_on_users_id"
  end

  add_foreign_key "reviews", "greenspaces", column: "greenspaces_id"
  add_foreign_key "reviews", "users", column: "users_id"
  add_foreign_key "walks", "greenspaces", column: "greenspaces_id"
  add_foreign_key "walks", "users", column: "users_id"
end
