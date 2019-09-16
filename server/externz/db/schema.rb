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

ActiveRecord::Schema.define(version: 2019_09_16_034123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "tagline"
    t.string "description"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.bigint "industry_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["industry_id"], name: "index_businesses_on_industry_id"
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posted_projects", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "business_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_posted_projects_on_business_id"
    t.index ["project_id"], name: "index_posted_projects_on_project_id"
    t.index ["student_id"], name: "index_posted_projects_on_student_id"
  end

  create_table "project_skills", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_skills_on_project_id"
    t.index ["skill_id"], name: "index_project_skills_on_skill_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "duration"
    t.string "rate"
    t.date "start"
    t.string "image"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_skills_on_category_id"
  end

  create_table "student_skills", force: :cascade do |t|
    t.string "level", default: "beginner"
    t.bigint "student_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_student_skills_on_skill_id"
    t.index ["student_id"], name: "index_student_skills_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "fname"
    t.string "mname"
    t.string "lname"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "major", default: "none"
    t.string "education"
    t.boolean "degree", default: false
    t.string "image", default: "https://southwoods.com/assets/img/profiles/fake1.png"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "role", default: "student"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "businesses", "industries"
  add_foreign_key "businesses", "users"
  add_foreign_key "posted_projects", "businesses"
  add_foreign_key "posted_projects", "projects"
  add_foreign_key "posted_projects", "students"
  add_foreign_key "project_skills", "projects"
  add_foreign_key "project_skills", "skills"
  add_foreign_key "skills", "categories"
  add_foreign_key "student_skills", "skills"
  add_foreign_key "student_skills", "students"
  add_foreign_key "students", "users"
end
