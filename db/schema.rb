# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110526022836) do

  create_table "basic_knowledges", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "", :null => false
    t.text     "body",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "business_cooperates", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "", :null => false
    t.text     "body",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_infos", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "", :null => false
    t.text     "body",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "", :null => false
    t.text     "body",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "frequent_asks", :force => true do |t|
    t.string   "question",   :limit => 254, :default => "", :null => false
    t.text     "answer",                                    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_details", :force => true do |t|
    t.string   "name",                    :limit => 60
    t.integer  "product_price"
    t.text     "product_desc"
    t.integer  "top_product_id"
    t.string   "productimg_file_name"
    t.string   "productimg_content_type"
    t.integer  "productimg_file_size"
    t.datetime "productimg_updated_at"
    t.string   "videoimg_file_name"
    t.string   "videoimg_content_type"
    t.integer  "videoimg_file_size"
    t.datetime "videoimg_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_types", :force => true do |t|
    t.string   "name",       :limit => 60, :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recent_newes", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "", :null => false
    t.text     "body",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "view_count",                :default => 0,  :null => false
  end

  create_table "sleep_rents", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "", :null => false
    t.text     "body",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_consults", :force => true do |t|
    t.string   "name",             :limit => 60
    t.string   "email",            :limit => 60
    t.string   "mobile",           :limit => 60
    t.string   "tel",              :limit => 60
    t.integer  "question_type_id"
    t.text     "question"
    t.text     "answer"
    t.boolean  "show_flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "talents", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "", :null => false
    t.text     "body",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "top_products", :force => true do |t|
    t.string   "name",                      :limit => 60
    t.text     "top_product_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "top_photo_file_name"
    t.string   "top_photo_content_type"
    t.integer  "top_photo_file_size"
    t.datetime "top_photo_updated_at"
    t.string   "en_top_photo_file_name"
    t.string   "en_top_photo_content_type"
    t.integer  "en_top_photo_file_size"
    t.datetime "en_top_photo_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                      :limit => 100, :default => "",        :null => false
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "state",                                    :default => "passive"
    t.datetime "deleted_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["name"], :name => "index_users_on_name"

  create_table "videopdf_downloads", :force => true do |t|
    t.string   "name",                  :limit => 60
    t.text     "videopdf_desc"
    t.string   "videopdf_file_name"
    t.string   "videopdf_content_type"
    t.integer  "videopdf_file_size"
    t.datetime "videopdf_updated_at"
    t.string   "videoimg_file_name"
    t.string   "videoimg_content_type"
    t.integer  "videoimg_file_size"
    t.datetime "videoimg_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "xiji_newes", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "", :null => false
    t.text     "body",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "view_count",                :default => 0,  :null => false
  end

end
