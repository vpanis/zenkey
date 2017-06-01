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

ActiveRecord::Schema.define(version: 20170601091147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "availabilities", force: :cascade do |t|
    t.integer  "flat_id"
    t.datetime "starts_at"
    t.integer  "length"
    t.integer  "slot_length"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["flat_id"], name: "index_availabilities_on_flat_id", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "flat_id"
    t.datetime "starting_date"
    t.datetime "end_date"
    t.integer  "tenant_id"
    t.string   "status",        default: "Pending"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["flat_id"], name: "index_bookings_on_flat_id", using: :btree
    t.index ["tenant_id"], name: "index_bookings_on_tenant_id", using: :btree
  end

  create_table "flats", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "rental_type"
    t.datetime "availability_date"
    t.integer  "min_duration"
    t.string   "address"
    t.boolean  "is_address_public"
    t.string   "subway"
    t.boolean  "furnished"
    t.integer  "size"
    t.integer  "rent"
    t.integer  "rental_costs"
    t.integer  "floor"
    t.integer  "rooms"
    t.integer  "bedrooms"
    t.boolean  "balcony"
    t.boolean  "elevator"
    t.boolean  "separate_bathroom"
    t.boolean  "parking"
    t.string   "status",                 default: "Available"
    t.integer  "income_ratio"
    t.boolean  "has_warrantor"
    t.integer  "warrantor_income_ratio"
    t.integer  "deposit"
    t.integer  "landlord_id"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.float    "latitude"
    t.float    "longitude"
    t.index ["landlord_id"], name: "index_flats_on_landlord_id", using: :btree
  end

  create_table "searches", force: :cascade do |t|
    t.string   "address"
    t.integer  "size_min"
    t.integer  "size_max"
    t.integer  "rent_min"
    t.integer  "rent_max"
    t.integer  "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_searches_on_tenant_id", using: :btree
  end

  create_table "slots", force: :cascade do |t|
    t.integer  "tenant_id"
    t.string   "status",     default: "Vacant"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.datetime "starts_at"
    t.integer  "flat_id"
    t.integer  "length",     default: 0
    t.index ["flat_id"], name: "index_slots_on_flat_id", using: :btree
    t.index ["tenant_id"], name: "index_slots_on_tenant_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "status"
    t.string   "job_description"
    t.string   "description"
    t.integer  "income",                 default: 0
    t.boolean  "has_warrantor",          default: false
    t.integer  "warrantor_income",       default: 0
    t.boolean  "is_landlord",            default: false
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "availabilities", "flats"
  add_foreign_key "bookings", "flats"
  add_foreign_key "bookings", "users", column: "tenant_id"
  add_foreign_key "flats", "users", column: "landlord_id"
  add_foreign_key "searches", "users", column: "tenant_id"
  add_foreign_key "slots", "flats"
  add_foreign_key "slots", "users", column: "tenant_id"
end
