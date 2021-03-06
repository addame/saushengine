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

ActiveRecord::Schema.define(:version => 20091111204845) do

  create_table "locations", :force => true do |t|
    t.integer "page_id"
    t.integer "word_id"
    t.integer "position"
  end

  add_index "locations", ["page_id"], :name => "index_locations_on_page_id"
  add_index "locations", ["word_id", "page_id"], :name => "index_locations_on_word_id_and_page_id"
  add_index "locations", ["word_id"], :name => "index_locations_on_word_id"

  create_table "pages", :force => true do |t|
    t.string   "url"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["url"], :name => "index_pages_on_url"

  create_table "words", :force => true do |t|
    t.string   "stem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "words", ["stem"], :name => "index_words_on_stem"

end
