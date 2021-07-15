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

ActiveRecord::Schema.define(version: 2021_07_15_105259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certifications", force: :cascade do |t|
    t.string "name"
    t.integer "fees"
    t.integer "duration"
  end

  create_table "certifieds", force: :cascade do |t|
    t.bigint "certification_id"
    t.bigint "student_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["certification_id"], name: "index_certifieds_on_certification_id"
    t.index ["student_id"], name: "index_certifieds_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "fees"
    t.integer "duration"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string "name"
    t.integer "salary"
    t.bigint "course_id"
    t.index ["course_id"], name: "index_faculties_on_course_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "content"
    t.string "comments_type"
    t.bigint "comments_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comments_type", "comments_id"], name: "index_feedbacks_on_comments"
  end

  create_table "guardians", force: :cascade do |t|
    t.string "name"
    t.bigint "contact"
    t.bigint "student_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_guardians_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.bigint "contact_no"
    t.date "enrolled_date"
    t.bigint "course_id"
    t.boolean "active"
    t.index ["course_id"], name: "index_students_on_course_id"
  end

end
