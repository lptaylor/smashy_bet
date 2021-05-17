class CreateSpirits < ActiveRecord::Migration[6.1]
  def change
    create_table :spirits do |t|
      t.string :spirit_name
      t.integer :fighter_id
      t.datetime :date_attached
      t.integer :match_number_attached
      t.string :power_description

      t.timestamps
    end
  end
end
