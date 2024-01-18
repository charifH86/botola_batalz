class AddtitulaireToTeamPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :team_players, :titulaire, :boolean, null: false, default: false
  end
end
