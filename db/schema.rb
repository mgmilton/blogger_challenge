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

ActiveRecord::Schema.define(version: 20180601163402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_comments", force: :cascade do |t|
    t.bigint "blog_id"
    t.bigint "comment_id"
    t.index ["blog_id"], name: "index_blog_comments_on_blog_id"
    t.index ["comment_id"], name: "index_blog_comments_on_comment_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "article"
    t.bigint "user_id"
    t.bigint "{:foreign_key=>true}_id"
    t.index ["user_id"], name: "index_blogs_on_user_id"
    t.index ["{:foreign_key=>true}_id"], name: "index_blogs_on_{:foreign_key=>true}_id"
  end

  create_table "commentaries", force: :cascade do |t|
    t.string "text"
    t.bigint "blog_id"
    t.index ["blog_id"], name: "index_commentaries_on_blog_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.bigint "blog_id"
    t.index ["blog_id"], name: "index_comments_on_blog_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "blog_comments", "blogs"
  add_foreign_key "blog_comments", "comments"
  add_foreign_key "blogs", "users"
  add_foreign_key "commentaries", "blogs"
  add_foreign_key "comments", "blogs"
end
