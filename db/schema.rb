# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140702210150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_lines", force: true do |t|
    t.integer  "order_id"
    t.integer  "share_option_id"
    t.integer  "quantity"
    t.decimal  "price",           precision: 6, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.text    "payment_plan"
    t.decimal "total_amt",          precision: 6, scale: 2
    t.integer "pickup_location_id"
  end

  create_table "pickup_locations", force: true do |t|
    t.text    "name"
    t.text    "description"
    t.text    "address_1"
    t.text    "address_2"
    t.text    "city"
    t.string  "state"
    t.string  "zip"
    t.string  "day_of_week"
    t.integer "start_time"
    t.integer "end_time"
    t.text    "season"
  end

  create_table "share_options", force: true do |t|
    t.text    "name"
    t.text    "image_url"
    t.text    "description"
    t.decimal "price",                precision: 6, scale: 2
    t.date    "start_date"
    t.date    "end_date"
    t.integer "num_of_distributions"
  end

end
