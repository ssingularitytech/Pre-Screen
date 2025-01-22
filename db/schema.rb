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

ActiveRecord::Schema[7.2].define(version: 2025_01_22_160309) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "role", default: 0
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "assignments", force: :cascade do |t|
    t.bigint "test_id", null: false
    t.bigint "invitee_id", null: false
    t.integer "score"
    t.datetime "started_at"
    t.datetime "completed_at"
    t.jsonb "answers", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "assignment_status", default: 0, null: false
    t.jsonb "session_data", default: {}, null: false
    t.string "token", null: false
    t.index ["invitee_id"], name: "index_assignments_on_invitee_id"
    t.index ["test_id", "invitee_id"], name: "index_assignments_on_test_id_and_invitee_id", unique: true
    t.index ["test_id"], name: "index_assignments_on_test_id"
    t.index ["token"], name: "index_assignments_on_token", unique: true
  end

  create_table "invitees", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
    t.text "notes"
    t.datetime "expires_at", null: false
    t.index ["token"], name: "index_invitees_on_token"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "topic_id", null: false
    t.text "question_text"
    t.string "option_a"
    t.string "option_b"
    t.string "option_c"
    t.string "option_d"
    t.string "correct_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: true, null: false
    t.index ["topic_id"], name: "index_questions_on_topic_id"
  end

  create_table "recent_invitation_sents", force: :cascade do |t|
    t.bigint "invitee_id", null: false
    t.datetime "sent_at", null: false
    t.bigint "test_id", null: false
    t.bigint "assignment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_recent_invitation_sents_on_assignment_id"
    t.index ["invitee_id"], name: "index_recent_invitation_sents_on_invitee_id"
    t.index ["test_id"], name: "index_recent_invitation_sents_on_test_id"
  end

  create_table "test_topics", force: :cascade do |t|
    t.bigint "test_id", null: false
    t.bigint "topic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_test_topics_on_test_id"
    t.index ["topic_id"], name: "index_test_topics_on_topic_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "admin_user_id"
    t.integer "duration", default: 30, null: false
    t.integer "passing_score", default: 70, null: false
    t.boolean "active", default: true, null: false
    t.datetime "start_at", null: false
    t.datetime "end_at", null: false
    t.index ["admin_user_id"], name: "index_tests_on_admin_user_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "admin_user_id"
    t.boolean "active", default: true, null: false
    t.index ["admin_user_id"], name: "index_topics_on_admin_user_id"
  end

  add_foreign_key "assignments", "invitees"
  add_foreign_key "assignments", "tests"
  add_foreign_key "questions", "topics"
  add_foreign_key "recent_invitation_sents", "assignments"
  add_foreign_key "recent_invitation_sents", "invitees"
  add_foreign_key "recent_invitation_sents", "tests"
  add_foreign_key "test_topics", "tests"
  add_foreign_key "test_topics", "topics"
  add_foreign_key "tests", "admin_users"
  add_foreign_key "topics", "admin_users"
end
