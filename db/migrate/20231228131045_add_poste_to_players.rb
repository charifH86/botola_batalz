class AddPosteToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :poste, :string, default: ""
  end
end
