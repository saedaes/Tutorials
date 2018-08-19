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

ActiveRecord::Schema.define(version: 2018_08_19_034002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.text "cellphone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "number"
    t.text "Adress"
  end

  create_table "places", force: :cascade do |t|
    t.string "Name"
    t.string "Location"
    t.text "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student", primary_key: "idstudent", id: :integer, default: -> { "nextval('test1'::regclass)" }, force: :cascade do |t|
    t.string "name", limit: 100
    t.string "lastname", limit: 100
    t.date "fechanac"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "Register"
    t.string "Name"
    t.string "LastName"
    t.string "SecondLastName"
    t.bigint "Cellphone"
    t.boolean "IsAssessor"
    t.integer "TeacherAssessor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "TeacherUser"
    t.integer "EmployeeNumber"
    t.string "Name"
    t.string "LastName"
    t.string "SecondLastName"
    t.bigint "Cellphone"
    t.string "Email"
    t.boolean "IsAdmin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
