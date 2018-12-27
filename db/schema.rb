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

ActiveRecord::Schema.define(version: 2018_12_25_060206) do

  create_table "answers_of_questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "test_answer_id"
    t.bigint "test_question_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_answer_id"], name: "index_answers_of_questions_on_test_answer_id"
    t.index ["test_question_id"], name: "index_answers_of_questions_on_test_question_id"
  end

  create_table "ckeditor_assets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "course_subject_tasks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "course_subject_id"
    t.bigint "task_id"
    t.string "task_name"
    t.text "task_instruction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_subject_id"], name: "index_course_subject_tasks_on_course_subject_id"
    t.index ["task_id"], name: "index_course_subject_tasks_on_task_id"
  end

  create_table "course_subjects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "subject_id"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_subjects_on_course_id"
    t.index ["subject_id"], name: "index_course_subjects_on_subject_id"
  end

  create_table "course_trainees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trainee_id"
    t.bigint "course_id"
    t.datetime "start_date"
    t.datetime "finish_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_trainees_on_course_id"
    t.index ["trainee_id"], name: "index_course_trainees_on_trainee_id"
  end

  create_table "course_trainers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trainer_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_trainers_on_course_id"
    t.index ["trainer_id"], name: "index_course_trainers_on_trainer_id"
  end

  create_table "courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "notification_statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "status", default: 0, null: false
    t.bigint "notification_id"
    t.bigint "course_trainee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_trainee_id"], name: "index_notification_statuses_on_course_trainee_id"
    t.index ["notification_id"], name: "index_notification_statuses_on_notification_id"
  end

  create_table "notifications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "event"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_notifications_on_course_id"
  end

  create_table "schedules", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "date"
    t.string "shift"
    t.string "trainer_name"
    t.text "title"
    t.bigint "subject_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_schedules_on_course_id"
    t.index ["subject_id"], name: "index_schedules_on_subject_id"
  end

  create_table "subject_tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_subject_tests_on_subject_id"
  end

  create_table "subjects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "instruction"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "instruction"
    t.index ["subject_id"], name: "index_tasks_on_subject_id"
  end

  create_table "test_answers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "question"
    t.bigint "subject_test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_test_id"], name: "index_test_questions_on_subject_test_id"
  end

  create_table "trainee_answers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trainee_test_id"
    t.integer "answer_of_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_of_question_id"], name: "index_trainee_answers_on_answer_of_question_id"
    t.index ["trainee_test_id"], name: "index_trainee_answers_on_trainee_test_id"
  end

  create_table "trainee_questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trainee_test_id"
    t.bigint "test_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_question_id"], name: "index_trainee_questions_on_test_question_id"
    t.index ["trainee_test_id"], name: "index_trainee_questions_on_trainee_test_id"
  end

  create_table "trainee_subjects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "finish_date"
    t.bigint "trainee_id"
    t.bigint "course_subject_id"
    t.bigint "course_trainee_id"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "comment"
    t.integer "score"
    t.index ["course_subject_id"], name: "index_trainee_subjects_on_course_subject_id"
    t.index ["course_trainee_id"], name: "index_trainee_subjects_on_course_trainee_id"
    t.index ["subject_id"], name: "index_trainee_subjects_on_subject_id"
    t.index ["trainee_id"], name: "index_trainee_subjects_on_trainee_id"
  end

  create_table "trainee_tasks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "status", default: 0, null: false
    t.bigint "trainee_id"
    t.bigint "course_subject_task_id"
    t.bigint "trainee_subject_id"
    t.bigint "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_subject_task_id"], name: "index_trainee_tasks_on_course_subject_task_id"
    t.index ["task_id"], name: "index_trainee_tasks_on_task_id"
    t.index ["trainee_id"], name: "index_trainee_tasks_on_trainee_id"
    t.index ["trainee_subject_id"], name: "index_trainee_tasks_on_trainee_subject_id"
  end

  create_table "trainee_tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "subject_test_id"
    t.bigint "trainee_subject_id"
    t.integer "mark"
    t.time "testing_time"
    t.datetime "created_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_test_id"], name: "index_trainee_tests_on_subject_test_id"
    t.index ["trainee_subject_id"], name: "index_trainee_tests_on_trainee_subject_id"
  end

  create_table "trainees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.boolean "sex"
    t.string "phone"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_trainees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_trainees_on_reset_password_token", unique: true
  end

  create_table "trainers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_trainers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_trainers_on_reset_password_token", unique: true
  end

  add_foreign_key "answers_of_questions", "test_answers"
  add_foreign_key "answers_of_questions", "test_questions"
  add_foreign_key "course_subject_tasks", "course_subjects"
  add_foreign_key "course_subject_tasks", "tasks"
  add_foreign_key "course_subjects", "courses"
  add_foreign_key "course_subjects", "subjects"
  add_foreign_key "course_trainees", "courses"
  add_foreign_key "course_trainees", "trainees"
  add_foreign_key "course_trainers", "courses"
  add_foreign_key "course_trainers", "trainers"
  add_foreign_key "notification_statuses", "course_trainees"
  add_foreign_key "notification_statuses", "notifications"
  add_foreign_key "notifications", "courses"
  add_foreign_key "schedules", "courses"
  add_foreign_key "schedules", "subjects"
  add_foreign_key "tasks", "subjects"
  add_foreign_key "test_questions", "subject_tests"
  add_foreign_key "trainee_answers", "trainee_tests"
  add_foreign_key "trainee_questions", "test_questions"
  add_foreign_key "trainee_questions", "trainee_tests"
  add_foreign_key "trainee_subjects", "course_subjects"
  add_foreign_key "trainee_subjects", "course_trainees"
  add_foreign_key "trainee_subjects", "subjects"
  add_foreign_key "trainee_subjects", "trainees"
  add_foreign_key "trainee_tasks", "course_subject_tasks"
  add_foreign_key "trainee_tasks", "tasks"
  add_foreign_key "trainee_tasks", "trainee_subjects"
  add_foreign_key "trainee_tasks", "trainees"
  add_foreign_key "trainee_tests", "subject_tests"
  add_foreign_key "trainee_tests", "trainee_subjects"
end
