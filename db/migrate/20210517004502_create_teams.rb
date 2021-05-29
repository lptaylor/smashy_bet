class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :team_name, limit: 100
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.integer :kills, default: 0
      t.integer :deaths, default: 0
      t.integer :suicides, default: 0
      t.integer :pts_won, default: 0
      t.integer :pts_lost, default: 0
      t.string :tier, limit: 1     
      t.integer :member_fighter_ids, array:true, default:[]
      t.timestamps
    end
  end
end
