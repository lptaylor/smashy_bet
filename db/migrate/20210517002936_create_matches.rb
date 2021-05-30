class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.datetime :date
      t.string :vod_link
      t.string :description
      t.string :stage, limit: 100
      t.string :type_of_match
      t.integer :pts_bet_l
      t.integer :pts_bet_r

      t.timestamps
    end
  end
end
