class AddTmidToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :tm_id, :string
  end
end
