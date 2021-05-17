class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :type
      t.datetime :date
      t.string :relevant_match_ids, limit: 50
      t.string :description

      t.timestamps
    end
  end
end
