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

ActiveRecord::Schema.define(:version => 20130330091547) do

  create_table "games", :force => true do |t|
    t.text     "bones"
    t.string   "type"
    t.integer  "time_per_move", :default => 1
    t.integer  "winner_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "histories", :force => true do |t|
    t.integer  "user_id"
    t.integer  "g_max_rating"
    t.integer  "s_max_rating"
    t.integer  "g_min_rating"
    t.integer  "g_best_won_from_player_id"
    t.integer  "s_best_won_from_player_id"
    t.integer  "g_worst_lost_from_player_id"
    t.integer  "s_worst_lost_from_player_id"
    t.integer  "g_a_lost",                    :default => 0
    t.integer  "s_a_lost",                    :default => 0
    t.integer  "g_a_won",                     :default => 0
    t.integer  "s_a_won",                     :default => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "messages", :force => true do |t|
    t.text     "message"
    t.integer  "author_id"
    t.integer  "receiver_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "history_id"
    t.string   "name"
    t.string   "surname"
    t.integer  "message_id"
    t.integer  "game_id"
    t.string   "login"
    t.string   "password"
    t.string   "email"
    t.string   "phone"
    t.integer  "friend_id"
    t.integer  "tournament_id"
    t.integer  "portal_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.boolean  "is_admin",                   :default => false
    t.string   "avatar"
    t.string   "settings"
    t.boolean  "active",                     :default => false
    t.string   "gender",        :limit => 1
    t.integer  "a_lost",                     :default => 0
    t.integer  "a_won",                      :default => 0
    t.integer  "g_raiting",                  :default => 1200
    t.integer  "s_raiting",                  :default => 1200
  end

end
