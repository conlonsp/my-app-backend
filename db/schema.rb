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

ActiveRecord::Schema.define(version: 2022_12_29_225402) do

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.string "brokerage"
    t.string "email"
    t.integer "phone_number"
  end

  create_table "appointments", force: :cascade do |t|
    t.string "scheduler"
    t.string "time"
    t.integer "agent_id"
    t.integer "home_id"
  end

  create_table "homes", force: :cascade do |t|
    t.string "address"
    t.integer "price"
    t.integer "square_feet"
    t.integer "agent_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
