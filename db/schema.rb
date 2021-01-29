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

ActiveRecord::Schema.define(version: 2021_01_22_225451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.text "name"
    t.text "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_logo"
    t.string "image_background"
  end

  create_table "company_orders", force: :cascade do |t|
    t.string "user_type", null: false
    t.bigint "user_id", null: false
    t.string "company_type", null: false
    t.bigint "company_id", null: false
    t.string "company_logo"
    t.string "company_name"
    t.decimal "company_total", precision: 9, scale: 2
    t.integer "total_quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_type", "company_id"], name: "index_company_orders_on_company_type_and_company_id"
    t.index ["user_type", "user_id"], name: "index_company_orders_on_user_type_and_user_id"
  end

  create_table "goods", force: :cascade do |t|
    t.text "name"
    t.float "weight"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "company_id"
    t.string "image"
    t.string "image_two"
    t.string "image_three"
    t.string "description"
    t.boolean "sale"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "good_id"
    t.integer "order_id"
    t.integer "quantity"
    t.decimal "total"
    t.decimal "unit_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "company_id"
    t.string "good_name"
    t.string "good_weight"
    t.string "good_image"
    t.string "company_name"
    t.string "company_logo"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "subtotal"
    t.decimal "total"
    t.integer "user_id"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "total_qty"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "current_order"
    t.boolean "admin"
  end

end
