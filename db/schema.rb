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

ActiveRecord::Schema.define(version: 2021_01_08_125154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "company"
    t.string "phone"
    t.string "listings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authentications", force: :cascade do |t|
    t.string "user_name"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listing_managers", force: :cascade do |t|
    t.text "name"
    t.text "tag_name"
    t.text "status"
    t.date "first_listed_date"
    t.text "num_bedrooms"
    t.text "num_bathrooms"
    t.text "summary"
    t.text "sq_footage"
    t.money "asking_price", scale: 2
    t.text "photos1"
    t.string "photos2"
    t.string "photos3"
    t.string "photos4"
    t.bigint "agent"
    t.string "phone", limit: 35
    t.bigint "company"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table :companies do |t|
    t.string :name
    t.string :address
    t.string :logo
    t.string :agents
    t.string :listings

    t.timestamps null: false
    end

  add_foreign_key "listing_managers", "agents", column: "agent", name: "agent_id"
end
