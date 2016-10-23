# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161023051502) do

  create_table "address_types", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.integer  "state_id"
    t.integer  "prefix_id"
    t.string   "first_name"
    t.string   "mi"
    t.string   "alias"
    t.string   "last_name"
    t.string   "suffix"
    t.boolean  "change_address"
    t.string   "address"
    t.integer  "appt_suite_num"
    t.string   "city"
    t.integer  "zip_code"
    t.string   "phone"
    t.integer  "extension"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "coh_payments", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "entity_id"
    t.integer  "entity_type_id"
    t.integer  "expenditure_category_type_id"
    t.integer  "candidate_id"
    t.integer  "travel_id"
    t.date     "date"
    t.float    "amount"
    t.string   "description"
    t.date     "date_created"
    t.float    "coh_payment_total"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "cover_sheets", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "candidate_id"
    t.integer  "treasurer_id"
    t.integer  "election_type_id"
    t.integer  "officeheld_id"
    t.integer  "offices_sought_id"
    t.date     "period_begin"
    t.date     "period_end"
    t.date     "election_date"
    t.date     "created_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "credits", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "transaction_id"
    t.integer  "entity_id"
    t.integer  "candidate_id"
    t.date     "date"
    t.float    "amount"
    t.string   "reason"
    t.date     "date_created"
    t.string   "return"
    t.float    "credit_total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "election_types", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entities", force: :cascade do |t|
    t.integer  "entity_type_id"
    t.integer  "prefix_id"
    t.integer  "state_id"
    t.string   "first_name"
    t.string   "mi"
    t.string   "last_name"
    t.string   "suffix"
    t.string   "address"
    t.string   "secondary_address"
    t.integer  "suite"
    t.string   "city"
    t.integer  "zip_code"
    t.string   "occupation_org"
    t.string   "company"
    t.date     "date_created"
    t.boolean  "change_address"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "entity_types", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expend_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "expenditure_categories", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenditures", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "entity_id"
    t.integer  "entity_type_id"
    t.integer  "transaction_id"
    t.integer  "expenditure_type_id"
    t.integer  "payment_method_id"
    t.integer  "travel_id"
    t.integer  "candidate_id"
    t.string   "purpose"
    t.date     "date"
    t.float    "amount"
    t.string   "category"
    t.date     "date_created"
    t.boolean  "living_expense"
    t.boolean  "reimbursement"
    t.float    "expenditure_total"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "filer_types", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filers", force: :cascade do |t|
    t.integer  "user_account_id"
    t.integer  "filer_type_id"
    t.integer  "state_id"
    t.integer  "office_held_id"
    t.integer  "office_sought_id"
    t.string   "first_name"
    t.string   "mi"
    t.string   "last_name"
    t.string   "committee"
    t.string   "address"
    t.string   "secondary_address"
    t.integer  "suite"
    t.string   "city"
    t.integer  "zip_code"
    t.string   "phone"
    t.integer  "extension"
    t.string   "email"
    t.date     "hand_deliver"
    t.date     "receive_date"
    t.boolean  "postmark"
    t.boolean  "active"
    t.date     "date_created"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "investment_purchases", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "entity_id"
    t.integer  "entity_type_id"
    t.integer  "expenditure_type_id"
    t.integer  "transaction_id"
    t.integer  "candidate_id"
    t.date     "date"
    t.float    "amount"
    t.string   "description"
    t.date     "date_created"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "transaction_id"
    t.integer  "entity_id"
    t.integer  "entity_type_id"
    t.integer  "candidate_id"
    t.date     "date"
    t.boolean  "out_of_state_pac"
    t.integer  "pac_id"
    t.float    "amount"
    t.float    "interest_rate"
    t.date     "maturity_date"
    t.string   "collateral_description"
    t.float    "personal_fund"
    t.float    "amount_guaranteed"
    t.date     "date_created"
    t.float    "loan_total"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "monetary_contributions", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "entity_id"
    t.integer  "entity_type_id"
    t.integer  "transaction_id"
    t.integer  "candiate_id"
    t.integer  "pac_id"
    t.date     "date"
    t.boolean  "out_of_state_pac"
    t.float    "amount"
    t.string   "description"
    t.date     "date_created"
    t.float    "mc_total"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "non_monetary_contributions", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "transaction_id"
    t.integer  "entity_id"
    t.integer  "entity_type_id"
    t.integer  "travel_id"
    t.integer  "candidate_id"
    t.date     "date"
    t.boolean  "out_of_state_pac"
    t.integer  "pac_id"
    t.float    "amount"
    t.string   "description"
    t.date     "date_created"
    t.float    "nmc_total"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "office_helds", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "office_soughts", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pledges", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "transaction_id"
    t.integer  "entity_id"
    t.integer  "entity_type_id"
    t.integer  "travel_id"
    t.integer  "candidate_id"
    t.date     "date"
    t.boolean  "out_of_state_pac"
    t.integer  "pac_id"
    t.float    "amount"
    t.string   "description"
    t.date     "date_created"
    t.float    "pledge_total"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "prefixes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "report_subtotals", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "monetary_contribution_id"
    t.integer  "non_monetary_contribution_id"
    t.integer  "pledge_id"
    t.integer  "loan_id"
    t.integer  "expenditure_id"
    t.integer  "unpaid_incurred_obligation_id"
    t.integer  "investment_purchase_id"
    t.integer  "credit_id"
    t.integer  "coh_payment_id"
    t.date     "date_created"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "report_types", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "filer_id"
    t.integer  "report_type_id"
    t.date     "submit_date"
    t.string   "file_name"
    t.string   "origin"
    t.date     "campaign_year"
    t.string   "upload_type"
    t.boolean  "on_time"
    t.boolean  "validity"
    t.string   "signature"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travels", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "entity_id"
    t.integer  "candidate_id"
    t.date     "date"
    t.string   "purpose"
    t.date     "travel_begin"
    t.date     "travel_end"
    t.string   "transportation"
    t.string   "location"
    t.date     "date_created"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "treasurers", force: :cascade do |t|
    t.integer  "address_type_id"
    t.integer  "state_id"
    t.string   "prefix"
    t.string   "first_name"
    t.string   "mi"
    t.string   "alias"
    t.string   "last_name"
    t.string   "suffix"
    t.boolean  "change_address"
    t.string   "address"
    t.integer  "suite"
    t.string   "city"
    t.integer  "zip_code"
    t.string   "phone"
    t.integer  "extension"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "unpaid_incurred_obligations", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "entity_id"
    t.integer  "entity_type_id"
    t.integer  "transaction_id"
    t.integer  "category_id"
    t.integer  "candidate_id"
    t.integer  "travel_id"
    t.integer  "expenditure_type_id"
    t.string   "description"
    t.date     "date"
    t.float    "amount"
    t.date     "date_created"
    t.float    "ul_obligation_total"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "user_accounts", force: :cascade do |t|
    t.string   "password"
    t.string   "email"
    t.date     "date_created"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
