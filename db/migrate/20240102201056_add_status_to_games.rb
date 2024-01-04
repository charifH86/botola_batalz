class AddStatusToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :status, :string, default: "pending"
  end
end
