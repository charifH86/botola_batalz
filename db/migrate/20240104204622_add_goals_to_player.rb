class AddGoalsToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :new_goal, :string
    add_column :players, :past_goal, :string
  end
end
