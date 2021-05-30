class CreateFighters < ActiveRecord::Migration[6.1]
  def change
    create_table :fighters do |t|
      t.string :name, limit: 100
      t.string :character, limit: 100
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.integer :points_bet_on, default: 0
      t.integer :points_won, default: 0
      t.integer :points_lost, default: 0
      t.integer :kills, default: 0
      t.integer :deaths, default: 0
      t.integer :suicides, default: 0
      t.integer :critical_failures, default: 0
      t.integer :streak, default: 0
      t.integer :smash_rating, default: 0
      t.decimal :total_jail_time, default: 0.0
      t.string :tier, limit: 1 
      t.timestamps
    end
  end
end
