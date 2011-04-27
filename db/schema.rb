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

ActiveRecord::Schema.define(:version => 20110419112807) do

  create_table "categories", :force => true do |t|
    t.string   "category_name", :limit => 25, :null => false
    t.string   "description",   :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", :force => true do |t|
    t.integer  "category_id"
    t.string   "title",          :limit => 50, :null => false
    t.text     "body"
    t.date     "submissiondate"
    t.string   "email"
    t.string   "contactphone",   :limit => 15
    t.string   "status",         :limit => 15
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "listings", ["category_id"], :name => "index_listings_on_category_id"
  add_index "listings", ["user_id"], :name => "index_listings_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "firstname",  :limit => 25, :null => false
    t.string   "lastname",   :limit => 25, :null => false
    t.string   "username",   :limit => 8,  :null => false
    t.string   "password",   :limit => 8,  :null => false
    t.string   "email"
    t.string   "phone",      :limit => 15
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
