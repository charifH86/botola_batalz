class RemoveColumnScoreFromGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :score, :string
  end
end
