# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_08_102655) do

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "merchants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "merchant_id", null: false
    t.boolean "recieved"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["merchant_id"], name: "index_payments_on_merchant_id"
  end

  create_table "subitems", force: :cascade do |t|
    t.string "name"
    t.integer "subs_usage"
    t.integer "tracked_quantity"
    t.boolean "notification"
    t.boolean "approval"
    t.integer "subscription_id", null: false
    t.integer "feature_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feature_id"], name: "index_subitems_on_feature_id"
    t.index ["subscription_id"], name: "index_subitems_on_subscription_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "merchant_id"
    t.string "name"
    t.boolean "approval"
    t.boolean "notifications"
    t.string "status"
    t.date "start_date"
    t.date "end_date"
    t.integer "usage_subscribed"
    t.integer "usage_actual"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["merchant_id"], name: "index_subscriptions_on_merchant_id"
  end

  create_table "usages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "payments", "merchants"
  add_foreign_key "subitems", "features"
  add_foreign_key "subitems", "subscriptions"
  add_foreign_key "subscriptions", "merchants"
end
