class AddUserToTeams < ActiveRecord::Migration[7.0]
  def change
    # Step 1: Add the user_id column without null: false constraint
    add_reference :teams, :user, foreign_key: true

    # Step 2: Assuming you have at least one user
    default_user_id = User.first.id

    # Update all teams without a user
    Team.where(user_id: nil).update_all(user_id: default_user_id)

    # Step 3: Change the column to not allow null
    change_column_null :teams, :user_id, false
  end
end
