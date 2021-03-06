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

ActiveRecord::Schema.define(version: 20170831183808) do

  create_table "info_payments", force: :cascade do |t|
    t.string   "payment_form"
    t.integer  "payment_amount"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "parkings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["property_id"], name: "index_parkings_on_property_id"
    t.index ["user_id"], name: "index_parkings_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "parking_id"
    t.integer  "info_payment_id"
    t.datetime "start"
    t.datetime "ending"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["info_payment_id"], name: "index_payments_on_info_payment_id"
    t.index ["parking_id"], name: "index_payments_on_parking_id"
  end

  create_table "properties", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "owner_id"
    t.string   "address"
    t.string   "zip_code"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_properties_on_owner_id"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
  end

end
