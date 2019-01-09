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

ActiveRecord::Schema.define(version: 20161118071848) do

  create_table "laptops", force: :cascade do |t|
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "laptops_reservations", id: false, force: :cascade do |t|
    t.integer "laptop_id",      null: false
    t.integer "reservation_id", null: false
  end

  create_table "meeting_rooms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id",         null: false
    t.integer  "meeting_room_id"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.datetime "start_hour"
    t.datetime "end_hour"
    t.date     "day"
    t.index ["meeting_room_id"], name: "index_reservations_on_meeting_room_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "reservations_videobeams", id: false, force: :cascade do |t|
    t.integer "reservation_id", null: false
    t.integer "videobeam_id",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videobeams", force: :cascade do |t|
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
