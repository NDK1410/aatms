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

ActiveRecord::Schema.define(version: 2019_04_01_073623) do

  create_table "ckeditor_assets", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
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

  create_table "course_subject_tasks", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "course_subject_id"
    t.bigint "task_id"
    t.string "task_name"
    t.text "task_instruction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_subject_id"], name: "index_course_subject_tasks_on_course_subject_id"
    t.index ["task_id"], name: "index_course_subject_tasks_on_task_id"
  end

  create_table "course_subjects", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "subject_id"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_subjects_on_course_id"
    t.index ["subject_id"], name: "index_course_subjects_on_subject_id"
  end

  create_table "course_trainees", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trainee_id"
    t.bigint "course_id"
    t.datetime "start_date"
    t.datetime "finish_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_trainees_on_course_id"
    t.index ["trainee_id"], name: "index_course_trainees_on_trainee_id"
  end

  create_table "course_trainers", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trainer_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_trainers_on_course_id"
    t.index ["trainer_id"], name: "index_course_trainers_on_trainer_id"
  end

  create_table "courses", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "slug"
    t.index ["slug"], name: "index_courses_on_slug", unique: true
  end

  create_table "friendly_id_slugs", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, length: { slug: 70, scope: 70 }
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", length: { slug: 140 }
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "identities", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trainee_id"
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainee_id"], name: "index_identities_on_trainee_id"
  end

  create_table "notification_statuses", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "status", default: 0, null: false
    t.bigint "notification_id"
    t.bigint "course_trainee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_trainee_id"], name: "index_notification_statuses_on_course_trainee_id"
    t.index ["notification_id"], name: "index_notification_statuses_on_notification_id"
  end

  create_table "notifications", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "event"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_notifications_on_course_id"
  end

  create_table "schedules", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
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

  create_table "subjects", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "instruction"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "instruction"
    t.index ["subject_id"], name: "index_tasks_on_subject_id"
  end

  create_table "test_answers", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "test_question_id"
    t.string "answer"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_question_id"], name: "index_test_answers_on_test_question_id"
  end

  create_table "test_questions", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "subject_id"
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_test_questions_on_subject_id"
  end

  create_table "trainee_answers", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trainee_question_id"
    t.bigint "test_answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.string "answer"
    t.index ["test_answer_id"], name: "index_trainee_answers_on_test_answer_id"
    t.index ["trainee_question_id"], name: "index_trainee_answers_on_trainee_question_id"
  end

  create_table "trainee_questions", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "trainee_test_id"
    t.bigint "test_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_question_id"], name: "index_trainee_questions_on_test_question_id"
    t.index ["trainee_test_id"], name: "index_trainee_questions_on_trainee_test_id"
  end

  create_table "trainee_subjects", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
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

  create_table "trainee_tasks", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
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

  create_table "trainee_tests", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "subject_id"
    t.bigint "course_trainee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score"
    t.string "title"
    t.string "slug"
    t.index ["course_trainee_id"], name: "index_trainee_tests_on_course_trainee_id"
    t.index ["subject_id"], name: "index_trainee_tests_on_subject_id"
  end

  create_table "trainees", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
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

  create_table "trainers", options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", force: :cascade do |t|
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

end
