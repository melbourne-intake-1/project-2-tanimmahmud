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

ActiveRecord::Schema.define(version: 20161130051115) do

  create_table "experiences", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "employer"
    t.string   "job_title"
    t.string   "responsibilities"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "from"
    t.string   "to"
    t.index ["user_id"], name: "index_experiences_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "job_type"
    t.text     "description"
    t.string   "position"
    t.string   "location"
    t.string   "status"
    t.string   "day"
    t.integer  "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "mailboxer_conversation_opt_outs", force: :cascade do |t|
    t.string  "unsubscriber_type"
    t.integer "unsubscriber_id"
    t.integer "conversation_id"
    t.index ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id"
    t.index ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type"
  end

  create_table "mailboxer_conversations", force: :cascade do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mailboxer_notifications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.string   "sender_type"
    t.integer  "sender_id"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.string   "notification_code"
    t.string   "notified_object_type"
    t.integer  "notified_object_id"
    t.string   "attachment"
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.boolean  "global",               default: false
    t.datetime "expires"
    t.index ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id"
    t.index ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type"
    t.index ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type"
    t.index ["type"], name: "index_mailboxer_notifications_on_type"
  end

  create_table "mailboxer_receipts", force: :cascade do |t|
    t.string   "receiver_type"
    t.integer  "receiver_id"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.boolean  "is_delivered",               default: false
    t.string   "delivery_method"
    t.string   "message_id"
    t.index ["notification_id"], name: "index_mailboxer_receipts_on_notification_id"
    t.index ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_payments_on_job_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "title"
    t.string   "image"
    t.string   "description"
    t.string   "resume_file"
    t.text     "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "phone"
    t.string   "website"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "qualification"
    t.string   "start"
    t.string   "end"
    t.string   "notes"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_schools_on_user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "position"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "job_type"
    t.string   "title"
    t.string   "address"
    t.string   "name"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_skills_on_user_id"
  end

  create_table "socials", force: :cascade do |t|
    t.string   "network"
    t.string   "username"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_socials_on_user_id"
  end

  create_table "user_searches", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "role"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
