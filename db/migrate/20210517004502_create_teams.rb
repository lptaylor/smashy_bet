class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :team_name, limit: 100
      t.integer :wins
      t.integer :losses
      t.integer :kills
      t.integer :deaths
      t.integer :suicides
      t.integer :pts_won
      t.integer :pts_lost
      t.string :tier, limit: 1     
      t.integer :member_fighter_ids, array:true, default:[]
      t.timestamps
    end
  end
end
