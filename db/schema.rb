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

ActiveRecord::Schema.define(:version => 20120702172017) do

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "web"
    t.string   "fbook"
    t.string   "twitter"
    t.string   "pinterest"
    t.string   "address"
    t.text     "description"
    t.string   "tags"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
