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

ActiveRecord::Schema.define(version: 20180427041847) do

  create_table "degrees", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "degrees_subjects", id: false, force: :cascade do |t|
    t.integer "degree_id"
    t.integer "subject_id"
    t.index ["degree_id"], name: "index_degrees_subjects_on_degree_id"
    t.index ["subject_id"], name: "index_degrees_subjects_on_subject_id"
  end

  create_table "degrees_teachers", id: false, force: :cascade do |t|
    t.integer "degree_id"
    t.integer "teacher_id"
    t.index ["degree_id"], name: "index_degrees_teachers_on_degree_id"
    t.index ["teacher_id"], name: "index_degrees_teachers_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.integer "age", null: false
    t.string "cpf", null: false
    t.integer "degree_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["degree_id"], name: "index_students_on_degree_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name", null: false
    t.integer "degree_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["degree_id"], name: "index_subjects_on_degree_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.integer "age", null: false
    t.string "cpf", null: false
    t.integer "degree_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["degree_id"], name: "index_teachers_on_degree_id"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
