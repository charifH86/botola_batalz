class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :price
      t.string :height
      t.string :nationality
      t.string :position
      t.string :current_team
      t.string :image_url

      t.timestamps
    end
  end
end
