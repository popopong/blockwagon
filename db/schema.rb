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

ActiveRecord::Schema.define(version: 2020_05_18_202748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rental_requests", force: :cascade do |t|
    t.string "status", default: "Open"
    t.string "message"
    t.date "start_date"
    t.date "end_date"
    t.bigint "video_cassette_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_rental_requests_on_user_id"
    t.index ["video_cassette_id"], name: "index_rental_requests_on_video_cassette_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "about"
    t.string "avatar"
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "video_cassettes", force: :cascade do |t|
    t.string "title"
    t.string "year"
    t.string "cover_photo"
    t.string "description"
    t.integer "price"
    t.bigint "video_genre_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_video_cassettes_on_user_id"
    t.index ["video_genre_id"], name: "index_video_cassettes_on_video_genre_id"
  end

  create_table "video_genres", force: :cascade do |t|
    t.bigint "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_video_genres_on_genre_id"
  end

  create_table "wishlists", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "video_cassette_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_wishlists_on_user_id"
    t.index ["video_cassette_id"], name: "index_wishlists_on_video_cassette_id"
  end

  add_foreign_key "rental_requests", "users"
  add_foreign_key "rental_requests", "video_cassettes"
  add_foreign_key "video_cassettes", "users"
  add_foreign_key "video_cassettes", "video_genres"
  add_foreign_key "video_genres", "genres"
  add_foreign_key "wishlists", "users"
  add_foreign_key "wishlists", "video_cassettes"
end
