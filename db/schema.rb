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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131212205701) do

  create_table "acts", force: true do |t|
    t.string   "title"
    t.integer  "play_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "acts", ["play_id"], name: "index_acts_on_play_id"

  create_table "lines", force: true do |t|
    t.text     "text"
    t.integer  "speech_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lines", ["speech_id"], name: "index_lines_on_speech_id"

  create_table "personas", force: true do |t|
    t.string   "name"
    t.integer  "play_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "personas", ["play_id"], name: "index_personas_on_play_id"

  create_table "plays", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scenes", force: true do |t|
    t.string   "title"
    t.integer  "act_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scenes", ["act_id"], name: "index_scenes_on_act_id"

  create_table "speeches", force: true do |t|
    t.integer  "scene_id"
    t.integer  "persona_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "speeches", ["persona_id"], name: "index_speeches_on_persona_id"
  add_index "speeches", ["scene_id"], name: "index_speeches_on_scene_id"

end
