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

ActiveRecord::Schema[7.0].define(version: 2024_05_18_172854) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", id: :string, force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", id: :string, force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_chapters", id: :string, force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "course_module_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_module_id"], name: "index_course_chapters_on_course_module_id"
  end

  create_table "course_modules", id: :string, force: :cascade do |t|
    t.string "title"
    t.string "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_modules_on_course_id"
  end

  create_table "courses", id: :string, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "credit_hours"
    t.string "school_id", null: false
    t.string "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_courses_on_school_id"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "schools", id: :string, force: :cascade do |t|
    t.text "bio"
    t.string "name"
    t.string "phone"
    t.string "address_id", null: false
    t.string "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_schools_on_address_id"
    t.index ["category_id"], name: "index_schools_on_category_id"
  end

  create_table "users", id: :string, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name", default: ""
    t.string "last_name", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.boolean "completed", default: false, null: false
    t.string "gender"
    t.date "date_of_birth"
    t.string "school_id", null: false
    t.string "avatar", default: "https://res.cloudinary.com/dmyhendcr/image/upload/v1715530751/user-blue_sjp9fn.png", null: false
    t.string "phone"
    t.text "bio"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["school_id"], name: "index_users_on_school_id"
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "course_chapters", "course_modules"
  add_foreign_key "course_modules", "courses"
  add_foreign_key "courses", "schools"
  add_foreign_key "courses", "users"
  add_foreign_key "schools", "addresses"
  add_foreign_key "schools", "categories"
  add_foreign_key "users", "schools"
end
