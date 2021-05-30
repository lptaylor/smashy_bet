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

ActiveRecord::Schema.define(version: 2021_05_30_032657) do

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

  create_table "fighter_matches", id: false, force: :cascade do |t|
    t.bigint "fighter_id"
    t.bigint "match_id"
    t.integer "user_slot"
    t.string "user_controller"
    t.integer "user_lvl"
    t.string "user_team", limit: 10
    t.string "user_bet_side", limit: 10
    t.boolean "won"
    t.index ["fighter_id"], name: "index_fighter_matches_on_fighter_id"
    t.index ["match_id"], name: "index_fighter_matches_on_match_id"
  end

  create_table "fighter_teams", id: false, force: :cascade do |t|
    t.bigint "fighter_id"
    t.bigint "team_id"
    t.boolean "currently_active", default: true
    t.index ["fighter_id"], name: "index_fighter_teams_on_fighter_id"
    t.index ["team_id"], name: "index_fighter_teams_on_team_id"
  end

  create_table "fighters", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "character", limit: 100
    t.integer "wins", default: 0
    t.integer "losses", default: 0
    t.integer "points_bet_on", default: 0
    t.integer "points_won", default: 0
    t.integer "points_lost", default: 0
    t.integer "kills", default: 0
    t.integer "deaths", default: 0
    t.integer "suicides", default: 0
    t.integer "critical_failures", default: 0
    t.integer "streak", default: 0
    t.integer "smash_rating", default: 0
    t.decimal "total_jail_time", default: "0.0"
    t.string "tier", limit: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "date"
    t.string "vod_link"
    t.string "description"
    t.string "stage", limit: 100
    t.string "type_of_match"
    t.integer "pts_bet_l"
    t.integer "pts_bet_r"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spirits", force: :cascade do |t|
    t.string "spirit_name"
    t.integer "fighter_id"
    t.datetime "date_attached"
    t.integer "match_number_attached"
    t.string "power_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name", limit: 100
    t.integer "wins", default: 0
    t.integer "losses", default: 0
    t.integer "kills", default: 0
    t.integer "deaths", default: 0
    t.integer "suicides", default: 0
    t.integer "pts_won", default: 0
    t.integer "pts_lost", default: 0
    t.string "tier", limit: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "fighter_matches", "fighters"
  add_foreign_key "fighter_matches", "matches"
  add_foreign_key "fighter_teams", "fighters"
  add_foreign_key "fighter_teams", "teams"
end
