# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_17_005743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.integer "type"
    t.datetime "date"
    t.string "relevant_match_ids", limit: 50
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fighters", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "character", limit: 100
    t.integer "wins"
    t.integer "losses"
    t.integer "matches"
    t.integer "points_bet_on"
    t.integer "points_won"
    t.integer "points_lost"
    t.integer "kills"
    t.integer "deaths"
    t.integer "suicides"
    t.integer "critical_failures"
    t.integer "streak"
    t.integer "smash_rating"
    t.decimal "total_jail_time"
    t.string "tier", limit: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "date"
    t.string "vod_link"
    t.string "description", limit: 100
    t.string "stage", limit: 100
    t.string "type", limit: 100
    t.string "winner", limit: 10
    t.integer "pts_bet_l"
    t.integer "pts_bet_r"
    t.integer "user_1_fighter_id"
    t.string "user_1_controller", limit: 5
    t.integer "user_1_lvl"
    t.string "user_1_team", limit: 10
    t.string "user_1_bet", limit: 10
    t.integer "user_2_fighter_id"
    t.string "user_2_controller", limit: 5
    t.integer "user_2_lvl"
    t.string "user_2_team", limit: 10
    t.string "user_2_bet", limit: 10
    t.integer "user_3_fighter_id"
    t.string "user_3_controller", limit: 5
    t.integer "user_3_lvl"
    t.string "user_3_team", limit: 10
    t.string "user_3_bet", limit: 10
    t.integer "user_4_fighter_id"
    t.string "user_4_controller", limit: 5
    t.integer "user_4_lvl"
    t.string "user_4_team", limit: 10
    t.string "user_4_bet", limit: 10
    t.integer "user_5_fighter_id"
    t.string "user_5_controller", limit: 5
    t.integer "user_5_lvl"
    t.string "user_5_team", limit: 10
    t.string "user_5_bet", limit: 10
    t.integer "user_6_fighter_id"
    t.string "user_6_controller", limit: 5
    t.integer "user_6_lvl"
    t.string "user_6_team", limit: 10
    t.string "user_6_bet", limit: 10
    t.integer "user_7_fighter_id"
    t.string "user_7_controller", limit: 5
    t.integer "user_7_lvl"
    t.string "user_7_team", limit: 10
    t.string "user_7_bet", limit: 10
    t.integer "user_8_fighter_id"
    t.string "user_8_controller", limit: 5
    t.integer "user_8_lvl"
    t.string "user_8_team", limit: 10
    t.string "user_8_bet", limit: 10
    t.integer "user_9_fighter_id"
    t.string "user_9_controller", limit: 5
    t.integer "user_9_lvl"
    t.string "user_9_team", limit: 10
    t.string "user_9_bet", limit: 10
    t.integer "user_10_fighter_id"
    t.string "user_10_controller", limit: 5
    t.integer "user_10_lvl"
    t.string "user_10_team", limit: 10
    t.string "user_10_bet", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name", limit: 100
    t.integer "wins"
    t.integer "losses"
    t.integer "kills"
    t.integer "deaths"
    t.integer "suicides"
    t.integer "pts_won"
    t.integer "pts_lost"
    t.string "tier", limit: 1
    t.integer "member_fighter_ids", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "widgets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
