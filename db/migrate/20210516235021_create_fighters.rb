class CreateFighters < ActiveRecord::Migration[6.1]
  def change
    create_table :fighters do |t|
      t.string :name, limit: 100
      t.string :character, limit: 100
      t.integer :wins
      t.integer :losses
      t.integer :matches
      t.integer :points_bet_on
      t.integer :points_won
      t.integer :points_lost
      t.integer :kills
      t.integer :deaths
      t.integer :suicides
      t.integer :critical_failures
      t.integer :streak
      t.integer :smash_rating
      t.decimal :total_jail_time
      t.string :tier, limit: 1 
      t.timestamps
    end
  end
end
