class FighterMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :fighter_matches, :id => false do |t|
      t.references :fighter, index: true, foreign_key: true
      t.references :match, index: true, foreign_key: true
      t.integer :user_slot
      t.string :user_controller
      t.integer :user_lvl
      t.string :user_team, limit: 10
      t.string :user_bet_side, limit: 10
      t.boolean :won
    end
  end
end
