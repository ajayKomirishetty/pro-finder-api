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

ActiveRecord::Schema.define(version: 2019_10_08_073650) do

  create_table "consultants", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.integer "mobile"
    t.string "email_id"
    t.string "alternate_email_id"
    t.string "city"
    t.string "state"
    t.string "country"
    t.boolean "will_relocate"
    t.string "skype_id"
    t.string "work_authorisation"
    t.date "visa_validity_end_date"
    t.integer "expected_ctc"
    t.string "current_ctc"
    t.string "h1b_holder_name"
    t.integer "h1b_holder_contact_number"
    t.integer "years_of_experience"
    t.integer "no_of_years_holding_h1b"
    t.boolean "green_card_applied"
    t.string "green_card_status"
    t.boolean "any_active_offers"
    t.text "reason_for_change"
    t.integer "notice_period"
    t.text "constraints_to_join_new_offer"
    t.integer "lock_version"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "requirement_number"
    t.string "company"
    t.string "job_type"
    t.string "job_title"
    t.string "Duration"
    t.string "Location"
    t.string "mode_of_interview"
    t.string "pay_rate"
    t.string "visa_status"
    t.text "job_description"
    t.text "qualifictions"
    t.text "daily_tasks"
    t.text "responsibilities"
    t.date "interview_date"
    t.string "interview_location"
    t.text "extra_data"
    t.integer "lock_version"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs_tables", force: :cascade do |t|
  end

  create_table "locations", force: :cascade do |t|
    t.integer "object_id"
    t.string "location"
    t.string "type"
    t.integer "lock_version"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations_tables", force: :cascade do |t|
  end

  create_table "technologies", force: :cascade do |t|
    t.integer "object_id"
    t.string "technology"
    t.string "type"
    t.integer "lock_version"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "technologies_tables", force: :cascade do |t|
  end

end
