class AddScoreLToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :score_l, :string
  end
end
