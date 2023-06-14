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

ActiveRecord::Schema[7.0].define(version: 2023_06_14_151220) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text "content"
    t.boolean "good_answer_flag"
    t.integer "number"
    t.bigint "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "avatars", force: :cascade do |t|
    t.integer "price"
    t.string "img_url"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.integer "number"
    t.integer "reward"
    t.bigint "quiz_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "title"
    t.integer "number"
    t.text "description"
    t.integer "reward"
    t.bigint "world_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_quizzes_on_world_id"
  end

  create_table "user_avatars", force: :cascade do |t|
    t.bigint "avatar_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "purchased", default: false
    t.index ["avatar_id"], name: "index_user_avatars_on_avatar_id"
    t.index ["user_id"], name: "index_user_avatars_on_user_id"
  end

  create_table "user_questions", force: :cascade do |t|
    t.boolean "done_flag"
    t.integer "try"
    t.bigint "user_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_user_questions_on_question_id"
    t.index ["user_id"], name: "index_user_questions_on_user_id"
  end

  create_table "user_quizzes", force: :cascade do |t|
    t.boolean "done_flag"
    t.bigint "user_id", null: false
    t.bigint "quiz_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "star", default: 0
    t.index ["quiz_id"], name: "index_user_quizzes_on_quiz_id"
    t.index ["user_id"], name: "index_user_quizzes_on_user_id"
  end

  create_table "user_worlds", force: :cascade do |t|
    t.boolean "done_flag"
    t.bigint "user_id", null: false
    t.bigint "world_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_worlds_on_user_id"
    t.index ["world_id"], name: "index_user_worlds_on_world_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "balance", default: 0
    t.string "role"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "worlds", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "reward"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "questions", "quizzes"
  add_foreign_key "quizzes", "worlds"
  add_foreign_key "user_avatars", "avatars"
  add_foreign_key "user_avatars", "users"
  add_foreign_key "user_questions", "questions"
  add_foreign_key "user_questions", "users"
  add_foreign_key "user_quizzes", "quizzes"
  add_foreign_key "user_quizzes", "users"
  add_foreign_key "user_worlds", "users"
  add_foreign_key "user_worlds", "worlds"
end
