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

ActiveRecord::Schema.define(version: 2019_03_31_101447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.integer "book_id"
    t.bigint "library_id"
    t.string "name_of_book"
    t.string "author"
    t.string "call_number"
    t.string "publishing_house"
    t.integer "year_of_publishing"
    t.integer "price"
    t.integer "date_of_receipt"
    t.bigint "true_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_books_on_library_id"
    t.index ["true_id"], name: "index_books_on_true_id"
  end

  create_table "employees", force: :cascade do |t|
    t.integer "employee_id"
    t.bigint "library_id"
    t.string "surname"
    t.string "name"
    t.string "patronymic"
    t.integer "date_of_birth"
    t.integer "date_of_employment"
    t.string "position"
    t.string "education"
    t.bigint "true_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_employees_on_library_id"
    t.index ["true_id"], name: "index_employees_on_true_id"
  end

  create_table "issuings", force: :cascade do |t|
    t.integer "issuings_id"
    t.integer "book_id"
    t.integer "subscriber_id"
    t.integer "date_of_issuing"
    t.integer "date_of_return"
    t.bigint "subscriber_id_id"
    t.bigint "true_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscriber_id_id"], name: "index_issuings_on_subscriber_id_id"
    t.index ["true_id"], name: "index_issuings_on_true_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.integer "library_id"
    t.string "number_library"
    t.string "name_library"
    t.string "address_library"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries_subscribers", id: false, force: :cascade do |t|
    t.bigint "library_id", null: false
    t.bigint "subscriber_id", null: false
    t.index ["library_id", "subscriber_id"], name: "index_libraries_subscribers_on_library_id_and_subscriber_id"
    t.index ["subscriber_id", "library_id"], name: "index_libraries_subscribers_on_subscriber_id_and_library_id"
  end

  create_table "subscribers", force: :cascade do |t|
    t.integer "subscriber_id"
    t.integer "library_id"
    t.integer "ticket_of_number"
    t.string "surname"
    t.string "name"
    t.string "patronymic"
    t.string "address"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
