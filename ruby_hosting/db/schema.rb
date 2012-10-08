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

ActiveRecord::Schema.define(:version => 20121008053937) do

  create_table "accounts", :force => true do |t|
    t.integer "address_id"
    t.string  "name"
    t.string  "phone_number"
    t.string  "email_id"
  end

  add_index "accounts", ["address_id"], :name => "fk_accounts_contact_address"

  create_table "addresses", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "line3"
    t.string   "street"
    t.string   "location"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postcode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meta_behaviours", :force => true do |t|
    t.integer  "meta_model_id"
    t.string   "name"
    t.text     "description"
    t.string   "method"
    t.string   "path"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "meta_behaviours", ["meta_model_id"], :name => "fk_meta_behaviours_model"

  create_table "meta_models", :force => true do |t|
    t.integer  "meta_service_id"
    t.integer  "meta_version_id"
    t.string   "name"
    t.text     "description"
    t.string   "media_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "meta_models", ["meta_service_id"], :name => "fk_meta_models_services"
  add_index "meta_models", ["meta_version_id"], :name => "fk_meta_models_versions"

  create_table "meta_properties", :force => true do |t|
    t.integer  "meta_model_id"
    t.string   "name"
    t.text     "description"
    t.string   "type"
    t.boolean  "nullable"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "meta_properties", ["meta_model_id"], :name => "fk_meta_properties_model"

  create_table "meta_services", :force => true do |t|
    t.string   "base_url"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "meta_versions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
