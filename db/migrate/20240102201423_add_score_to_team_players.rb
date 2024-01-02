class AddScoreToTeamPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :team_players, :score, :integer, default: 0
  end
end
