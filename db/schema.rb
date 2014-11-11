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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141027093800) do

  create_table "certificates", :force => true do |t|
    t.integer  "certificate_number"
    t.integer  "machine_id"
    t.integer  "customer_id"
    t.integer  "test_weight_id_1"
    t.integer  "test_weight_id_2"
    t.integer  "test_weight_id_3"
    t.string   "customer_reference"
    t.date     "next_certification_date"
    t.text     "comments"
    t.string   "tolerance_1_range"
    t.string   "tolerance_2_range"
    t.string   "tolerance_3_range"
    t.string   "tolerance_1_actual"
    t.string   "tolerance_2_actual"
    t.string   "tolerance_3_actual"
    t.string   "testpoint_1"
    t.string   "testpoint_2"
    t.string   "testpoint_3"
    t.string   "testpoint_4"
    t.string   "testpoint_5"
    t.string   "testpoint_6"
    t.string   "definitive_testpoint_1"
    t.string   "definitive_testpoint_2"
    t.string   "definitive_testpoint_3"
    t.string   "definitive_testpoint_4"
    t.string   "definitive_testpoint_5"
    t.string   "definitive_testpoint_6"
    t.string   "definitive_testpoint_1_dev"
    t.string   "definitive_testpoint_2_dev"
    t.string   "definitive_testpoint_3_dev"
    t.string   "definitive_testpoint_4_dev"
    t.string   "definitive_testpoint_5_dev"
    t.string   "definitive_testpoint_6_dev"
    t.string   "repeatability_1_unloaded"
    t.string   "repeatability_1_loaded"
    t.string   "repeatability_2_unloaded"
    t.string   "repeatability_2_loaded"
    t.string   "repeatability_3_unloaded"
    t.string   "repeatability_3_loaded"
    t.string   "repeatability_4_unloaded"
    t.string   "repeatability_4_loaded"
    t.string   "repeatability_5_unloaded"
    t.string   "repeatability_5_loaded"
    t.string   "repeatability_6_unloaded"
    t.string   "repeatability_6_loaded"
    t.string   "definitive_repeatability_1_load"
    t.string   "definitive_repeatability_1_result_1"
    t.string   "definitive_repeatability_1_result_2"
    t.string   "definitive_repeatability_1_result_3"
    t.string   "definitive_repeatability_2_load"
    t.string   "definitive_repeatability_2_result_1"
    t.string   "definitive_repeatability_2_result_2"
    t.string   "definitive_repeatability_2_result_3"
    t.string   "definitive_repeatability_3_load"
    t.string   "definitive_repeatability_3_result_1"
    t.string   "definitive_repeatability_3_result_2"
    t.string   "definitive_repeatability_3_result_3"
    t.string   "definitive_eccentric_1"
    t.string   "definitive_eccentric_2"
    t.string   "definitive_eccentric_3"
    t.string   "definitive_eccentric_4"
    t.string   "definitive_eccentric_5"
    t.string   "definitive_eccentric_6"
    t.string   "definitive_eccentric_7"
    t.string   "definitive_eccentric_8"
    t.string   "definitive_eccentric_1_dev"
    t.string   "definitive_eccentric_2_dev"
    t.string   "definitive_eccentric_3_dev"
    t.string   "definitive_eccentric_4_dev"
    t.string   "definitive_eccentric_5_dev"
    t.string   "definitive_eccentric_6_dev"
    t.string   "definitive_eccentric_7_dev"
    t.string   "definitive_eccentric_8_dev"
    t.string   "user_name"
    t.date     "date_completed"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "account_number"
    t.string   "name"
    t.string   "address"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "street"
    t.string   "town"
    t.string   "city"
    t.string   "telephone_number"
    t.string   "contact_name"
    t.string   "email_address"
  end

  create_table "machines", :force => true do |t|
    t.integer  "customer_id"
    t.string   "make"
    t.string   "model"
    t.string   "serial_number"
    t.integer  "capacity"
    t.decimal  "division_size"
    t.string   "units"
    t.date     "last_calibration_date"
    t.date     "due_date"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "capacity_2"
    t.decimal  "division_size_2"
    t.integer  "capacity_3"
    t.decimal  "division_size_3"
    t.boolean  "multiRange"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
