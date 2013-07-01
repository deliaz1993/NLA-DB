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

ActiveRecord::Schema.define(version: 20130629223818) do

  create_table "employees", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.string   "availability"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "novanet_course_enrollments", force: true do |t|
    t.integer  "student_id"
    t.integer  "NovanetCourse_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "novanet_course_enrollments", ["NovanetCourse_id"], name: "index_novanet_course_enrollments_on_NovanetCourse_id", using: :btree
  add_index "novanet_course_enrollments", ["student_id"], name: "index_novanet_course_enrollments_on_student_id", using: :btree

  create_table "novanet_courses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "novanet_location_enrollments", force: true do |t|
    t.integer  "student_id"
    t.integer  "NovanetLocation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "novanet_location_enrollments", ["NovanetLocation_id"], name: "index_novanet_location_enrollments_on_NovanetLocation_id", using: :btree
  add_index "novanet_location_enrollments", ["student_id"], name: "index_novanet_location_enrollments_on_student_id", using: :btree

  create_table "novanet_locations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "novanet_locations", ["employee_id"], name: "index_novanet_locations_on_employee_id", using: :btree

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "DOB"
    t.string   "phone"
    t.string   "email"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "parent_relationship"
    t.string   "parent_email"
    t.string   "comments"
    t.integer  "grade"
    t.string   "counselor_name"
    t.string   "student_phone"
    t.string   "parent_home_phone"
    t.string   "parent_work_phone"
    t.string   "parent_cell_phone"
    t.string   "parent_street_address"
    t.string   "parent_city"
    t.string   "parent_state"
    t.integer  "parent_zip_code"
    t.integer  "household_number_of_members"
    t.boolean  "in_foster_care"
    t.string   "school_lunch_program"
    t.string   "race"
    t.string   "dietary_needs"
    t.string   "allergies_medications_impairments"
    t.boolean  "permission_to_transport_child"
    t.string   "physician_clinic_name"
    t.string   "clinic_street_address"
    t.string   "clinic_phone_number"
    t.string   "emergency_contact_1_name"
    t.string   "emergency_contact_1_phone"
    t.string   "emergency_contact_2_name"
    t.string   "emergency_contact_2_phone"
    t.boolean  "release_field_trip_form_signed"
    t.boolean  "release_and_authorization_form_signed"
    t.string   "parent_first_name"
    t.string   "parent_last_name"
    t.boolean  "autistic_support"
    t.boolean  "emotional_support"
    t.boolean  "hearing_support"
    t.boolean  "learning_support"
    t.boolean  "life_skills_support"
    t.boolean  "multiple_disability_support"
    t.boolean  "speed_and_language_support"
    t.boolean  "visual_support"
    t.boolean  "other_support"
    t.integer  "school_id"
  end

end
