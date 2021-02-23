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

ActiveRecord::Schema.define(version: 2020_12_24_162628) do

  create_table "listings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "tag_name"
    t.string "status"
    t.date "first_listed"
    t.string "bedrooms"
    t.string "bathrooms"
    t.string "summary"
    t.string "sqft"
    t.string "asking_price"
    t.string "photo_1"
    t.string "photo_2"
    t.string "photo_3"
    t.string "photo_4"
    t.integer "user_id"
    t.string "phone"
    t.string "community"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
