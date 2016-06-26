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

ActiveRecord::Schema.define(version: 20160626152900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_groups", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "year_id"
    t.index ["year_id"], name: "index_class_groups_on_year_id", using: :btree
  end

  create_table "class_room_subjects", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "class_room_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "teacher_id"
    t.index ["class_room_id"], name: "index_class_room_subjects_on_class_room_id", using: :btree
    t.index ["subject_id"], name: "index_class_room_subjects_on_subject_id", using: :btree
    t.index ["teacher_id"], name: "index_class_room_subjects_on_teacher_id", using: :btree
  end

  create_table "class_rooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_timings", force: :cascade do |t|
    t.string   "name"
    t.integer  "week_day"
    t.integer  "student_group_id"
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "is_break",         default: true
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["student_group_id"], name: "index_class_timings_on_student_group_id", using: :btree
  end

  create_table "employees", force: :cascade do |t|
    t.string   "employee_number"
    t.date     "employment_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "exam_periods", force: :cascade do |t|
    t.integer  "term_id"
    t.string   "label"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["term_id"], name: "index_exam_periods_on_term_id", using: :btree
  end

  create_table "grading_levels", force: :cascade do |t|
    t.string   "name"
    t.decimal  "marks_from"
    t.decimal  "marks_to"
    t.decimal  "points"
    t.string   "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marks", force: :cascade do |t|
    t.date     "date"
    t.integer  "student_id"
    t.integer  "mark"
    t.integer  "schedule_item_id"
    t.string   "type"
    t.integer  "term_id"
    t.integer  "year_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["schedule_item_id"], name: "index_marks_on_schedule_item_id", using: :btree
    t.index ["student_id"], name: "index_marks_on_student_id", using: :btree
    t.index ["term_id"], name: "index_marks_on_term_id", using: :btree
    t.index ["year_id"], name: "index_marks_on_year_id", using: :btree
  end

  create_table "schedule_items", force: :cascade do |t|
    t.integer  "weed_day"
    t.integer  "time_table_item_id"
    t.integer  "class_room_id"
    t.integer  "student_group_id"
    t.integer  "subject_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["class_room_id"], name: "index_schedule_items_on_class_room_id", using: :btree
    t.index ["student_group_id"], name: "index_schedule_items_on_student_group_id", using: :btree
    t.index ["subject_id"], name: "index_schedule_items_on_subject_id", using: :btree
    t.index ["time_table_item_id"], name: "index_schedule_items_on_time_table_item_id", using: :btree
  end

  create_table "streams", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "class_group_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["class_group_id"], name: "index_streams_on_class_group_id", using: :btree
  end

  create_table "student_group_marks", force: :cascade do |t|
    t.integer  "exam_period_id"
    t.integer  "student_id"
    t.integer  "class_room_subject_id"
    t.integer  "student_group_id"
    t.decimal  "marks"
    t.decimal  "points"
    t.string   "comments"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["class_room_subject_id"], name: "index_student_group_marks_on_class_room_subject_id", using: :btree
    t.index ["exam_period_id"], name: "index_student_group_marks_on_exam_period_id", using: :btree
    t.index ["student_group_id"], name: "index_student_group_marks_on_student_group_id", using: :btree
    t.index ["student_id"], name: "index_student_group_marks_on_student_id", using: :btree
  end

  create_table "student_groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "year_id"
    t.integer  "group_teacher_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "class_room_id"
    t.index ["class_room_id"], name: "index_student_groups_on_class_room_id", using: :btree
    t.index ["group_teacher_id"], name: "index_student_groups_on_group_teacher_id", using: :btree
    t.index ["year_id"], name: "index_student_groups_on_year_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "student_group_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "admission_group_id"
    t.index ["admission_group_id"], name: "index_students_on_admission_group_id", using: :btree
    t.index ["student_group_id"], name: "index_students_on_student_group_id", using: :btree
  end

  create_table "subject_marks", force: :cascade do |t|
    t.integer  "exam_period_id"
    t.integer  "subject_id"
    t.integer  "student_id"
    t.decimal  "marks"
    t.decimal  "points"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["exam_period_id"], name: "index_subject_marks_on_exam_period_id", using: :btree
    t.index ["student_id"], name: "index_subject_marks_on_student_id", using: :btree
    t.index ["subject_id"], name: "index_subject_marks_on_subject_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "hours_per_week"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "has_exam",       default: true
    t.index ["year"], name: "index_subjects_on_year", using: :btree
  end

  create_table "teacher_subjects", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_teacher_subjects_on_subject_id", using: :btree
    t.index ["teacher_id"], name: "index_teacher_subjects_on_teacher_id", using: :btree
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "terms", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "year_id"
    t.string   "name"
    t.index ["year_id"], name: "index_terms_on_year_id", using: :btree
  end

  create_table "time_table_items", force: :cascade do |t|
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "item_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "years", force: :cascade do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "exam_periods", "terms"
  add_foreign_key "student_group_marks", "class_room_subjects"
  add_foreign_key "student_group_marks", "exam_periods"
  add_foreign_key "student_group_marks", "student_groups"
  add_foreign_key "student_group_marks", "students"
  add_foreign_key "subject_marks", "exam_periods"
  add_foreign_key "subject_marks", "students"
  add_foreign_key "subject_marks", "subjects"
end
