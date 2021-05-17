class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.datetime :date
      t.string :vod_link
      t.string :description, limit: 100
      t.string :stage, limit: 100
      t.string :type, limit: 100
      t.string :winner, limit: 10
      t.integer :pts_bet_l
      t.integer :pts_bet_r
      t.integer :user_1_fighter_id
      t.string :user_1_controller, limit: 5
      t.integer :user_1_lvl
      t.string :user_1_team, limit: 10
      t.string :user_1_bet, limit: 10
      t.integer :user_2_fighter_id
      t.string :user_2_controller, limit: 5
      t.integer :user_2_lvl
      t.string :user_2_team, limit: 10
      t.string :user_2_bet, limit: 10
      t.integer :user_3_fighter_id
      t.string :user_3_controller, limit: 5
      t.integer :user_3_lvl
      t.string :user_3_team, limit: 10
      t.string :user_3_bet, limit: 10
      t.integer :user_4_fighter_id
      t.string :user_4_controller, limit: 5
      t.integer :user_4_lvl
      t.string :user_4_team, limit: 10
      t.string :user_4_bet, limit: 10
      t.integer :user_5_fighter_id
      t.string :user_5_controller, limit: 5
      t.integer :user_5_lvl
      t.string :user_5_team, limit: 10
      t.string :user_5_bet, limit: 10
      t.integer :user_6_fighter_id
      t.string :user_6_controller, limit: 5
      t.integer :user_6_lvl
      t.string :user_6_team, limit: 10
      t.string :user_6_bet, limit: 10
      t.integer :user_7_fighter_id
      t.string :user_7_controller, limit: 5
      t.integer :user_7_lvl
      t.string :user_7_team, limit: 10
      t.string :user_7_bet, limit: 10
      t.integer :user_8_fighter_id
      t.string :user_8_controller, limit: 5
      t.integer :user_8_lvl
      t.string :user_8_team, limit: 10
      t.string :user_8_bet, limit: 10
      t.integer :user_9_fighter_id
      t.string :user_9_controller, limit: 5
      t.integer :user_9_lvl
      t.string :user_9_team, limit: 10
      t.string :user_9_bet, limit: 10
      t.integer :user_10_fighter_id
      t.string :user_10_controller, limit: 5
      t.integer :user_10_lvl
      t.string :user_10_team, limit: 10
      t.string :user_10_bet, limit: 10

      t.timestamps
    end
  end
end
