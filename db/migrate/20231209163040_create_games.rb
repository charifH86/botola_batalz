class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :score
      t.integer :localteam_id
      t.integer :visitorteam_id
      t.references :league, null: false, foreign_key: true


      t.timestamps
    end
    add_foreign_key :games, :teams, column: :localteam_id
    add_foreign_key :games, :teams, column: :visitorteam_id
  end
end
