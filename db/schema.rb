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

ActiveRecord::Schema.define(:version => 20120929194510) do

  create_table "_pages_old_20120929", :force => true do |t|
    t.string   "title"
    t.string   "preview"
    t.text     "body"
    t.string   "is_main",    :limit => 6
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "_pages_old_20120929_1", :force => true do |t|
    t.string   "title"
    t.string   "preview"
    t.text     "body"
    t.string   "is_main",         :limit => 6
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "is_menu_element"
  end

  create_table "_pages_old_20120929_2", :force => true do |t|
    t.string   "title"
    t.string   "preview"
    t.text     "body"
    t.string   "is_main",         :limit => 6
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "is_menu_element", :limit => 1
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "value"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.string   "preview"
    t.text     "body"
    t.string   "is_main",         :limit => 6
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "is_menu_element", :limit => 1
    t.string   "is_special",      :limit => 1
  end

end
