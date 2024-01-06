class AddUserToTeams < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :user, foreign_key: true
    # default_user_id = User.first.id
    # Team.where(user_id: nil).update_all(user_id: default_user_id)
    # change_column_null :teams, :user_id, false
  end
end
