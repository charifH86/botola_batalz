class AddBudgetToTeam < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :budget, :integer, default: 5000000
  end
end
