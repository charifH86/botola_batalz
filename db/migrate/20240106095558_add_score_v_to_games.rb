class AddScoreVToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :score_v, :string
  end
end
