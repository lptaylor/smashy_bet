class FighterTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :fighter_teams, :id => false do |t|
      t.references :fighter, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.boolean :currently_active, default: true
    end
  end
end
