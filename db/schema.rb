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

ActiveRecord::Schema.define(version: 20180826165723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "create_middlewares", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "quantity"
    t.float    "web_price"
    t.string   "web_price_desc"
    t.string   "phone_price"
    t.string   "phone_price_desc"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "create_middlewares", ["product_id"], name: "index_create_middlewares_on_product_id", using: :btree

  create_table "middlewares", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "quantity"
    t.float    "web_price"
    t.string   "web_price_desc"
    t.string   "phone_price"
    t.string   "phone_price_desc"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "product_description_id"
  end

  add_index "middlewares", ["product_description_id"], name: "index_middlewares_on_product_description_id", using: :btree
  add_index "middlewares", ["product_id"], name: "index_middlewares_on_product_id", using: :btree

  create_table "product_descriptions", force: :cascade do |t|
    t.string   "desc"
    t.integer  "product_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "middleware_id"
  end

  add_index "product_descriptions", ["middleware_id"], name: "index_product_descriptions_on_middleware_id", using: :btree
  add_index "product_descriptions", ["product_id"], name: "index_product_descriptions_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "web_price"
    t.string   "call_price"
    t.integer  "category_id"
    t.string   "product_desc"
    t.string   "manufactors_name"
    t.float    "quantity"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "active_ingredient_id"
    t.integer  "product_description_id"
  end

  add_index "products", ["active_ingredient_id"], name: "index_products_on_active_ingredient_id", using: :btree
  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["product_description_id"], name: "index_products_on_product_description_id", using: :btree

  create_table "titles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "additional_address"
    t.string   "city"
    t.string   "region"
    t.string   "postal_code"
    t.string   "phone_number"
    t.string   "email_address"
    t.integer  "title_id"
    t.integer  "country_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "create_middlewares", "products"
  add_foreign_key "middlewares", "products"
  add_foreign_key "product_descriptions", "products"
  add_foreign_key "products", "categories"
  add_foreign_key "users", "countries"
  add_foreign_key "users", "titles"
end
