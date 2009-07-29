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

ActiveRecord::Schema.define(:version => 20090729035646) do

  create_table "beers", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "type"
    t.integer  "percent",     :limit => 10, :precision => 10, :scale => 0
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "casts", :force => true do |t|
    t.integer  "beer_id"
    t.integer  "size",        :limit => 10, :precision => 10, :scale => 0
    t.string   "measurement"
    t.integer  "cost",        :limit => 10, :precision => 10, :scale => 0
    t.boolean  "available"
    t.boolean  "tapped"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drafts", :force => true do |t|
    t.integer  "beer_id"
    t.integer  "size",        :limit => 10, :precision => 10, :scale => 0
    t.string   "measurement"
    t.integer  "cost",        :limit => 10, :precision => 10, :scale => 0
    t.boolean  "available"
    t.boolean  "tapped"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "beer_id"
    t.integer  "size",        :limit => 10, :precision => 10, :scale => 0
    t.string   "measurement"
    t.integer  "cost",        :limit => 10, :precision => 10, :scale => 0
    t.integer  "over_all"
    t.integer  "appearance"
    t.integer  "aroma"
    t.integer  "mouthfeel"
    t.integer  "flavor"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count"
    t.integer  "failed_login_count"
    t.datetime "current_login_at"
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "nick_name"
    t.string   "from"
    t.date     "uprising_since"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
