class AddPositionToTeamPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :team_players, :position, :string, default: "0"
  end
end
