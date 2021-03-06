# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_01_202521) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questions", force: :cascade do |t|
    t.bigint "trivium_id", null: false
    t.bigint "quiz_id", null: false
    t.string "response"
    t.boolean "is_correct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
    t.index ["trivium_id"], name: "index_questions_on_trivium_id"
  end

  create_table "quiz_trivia", force: :cascade do |t|
    t.bigint "quiz_id", null: false
    t.bigint "trivium_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "response"
    t.boolean "is_correct?"
    t.index ["quiz_id"], name: "index_quiz_trivia_on_quiz_id"
    t.index ["trivium_id"], name: "index_quiz_trivia_on_trivium_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.integer "score"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_quizzes_on_user_id"
  end

  create_table "trivia", force: :cascade do |t|
    t.string "prompt"
    t.string "incorrect", array: true
    t.string "correct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "questions", "quizzes"
  add_foreign_key "questions", "trivia"
  add_foreign_key "quiz_trivia", "quizzes"
  add_foreign_key "quiz_trivia", "trivia"
  add_foreign_key "quizzes", "users"
end
