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

ActiveRecord::Schema.define(version: 20181030210026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chores", force: :cascade do |t|
    t.string "title"
    t.string "kid"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list_items", force: :cascade do |t|
    t.string "item"
    t.bigint "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.index ["list_id"], name: "index_list_items_on_list_id"
  end

  create_table "list_types", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_list_types_on_user_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "list_type_id"
    t.integer "status", default: 0
    t.bigint "user_id"
    t.index ["list_type_id"], name: "index_lists_on_list_type_id"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "mytasks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "due"
    t.string "hours"
    t.string "percent"
    t.string "image"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "due"
    t.string "hours"
    t.string "percent"
    t.string "image"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "list_items", "lists"
  add_foreign_key "list_types", "users"
  add_foreign_key "lists", "list_types"
  add_foreign_key "lists", "users"
end
