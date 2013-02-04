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

ActiveRecord::Schema.define(:version => 20130204075032) do

  create_table "acts_as_bloggable_assets", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "assetable_id"
    t.string   "assetable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "acts_as_bloggable_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "ancestry"
  end

  add_index "acts_as_bloggable_categories", ["ancestry"], :name => "index_acts_as_bloggable_categories_on_ancestry"

  create_table "acts_as_bloggable_comments", :force => true do |t|
    t.string   "title",            :limit => 50, :default => ""
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  add_index "acts_as_bloggable_comments", ["commentable_id"], :name => "index_acts_as_bloggable_comments_on_commentable_id"
  add_index "acts_as_bloggable_comments", ["commentable_type"], :name => "index_acts_as_bloggable_comments_on_commentable_type"
  add_index "acts_as_bloggable_comments", ["user_id"], :name => "index_acts_as_bloggable_comments_on_user_id"

  create_table "acts_as_bloggable_identities", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "acts_as_bloggable_pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.text     "summary"
    t.string   "permalink"
    t.datetime "published_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "ancestry"
  end

  create_table "acts_as_bloggable_posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.text     "summary"
    t.string   "permalink"
    t.string   "rendering_engine"
    t.string   "state"
    t.datetime "published_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "ancestry"
  end

  create_table "acts_as_bloggable_sections", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "acts_as_bloggable_users", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "provider"
    t.string   "uid"
  end

  create_table "acts_as_bloggable_versions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "versionable_id"
    t.string   "versionable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

end
