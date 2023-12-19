class ChangePriceToIntegerInPlayers < ActiveRecord::Migration[7.0]
  def up
    # Add a temporary column for the integer prices
    add_column :players, :price_temp, :integer

    # Convert all existing prices to integer and store them in the temporary column
    Player.find_each do |player|
      integer_price = convert_value_to_integer(player.price)
      player.update_columns(price_temp: integer_price)
    end

    # Remove the original price column and rename the temporary column
    remove_column :players, :price
    rename_column :players, :price_temp, :price
  end

def down
  # Add the original price column back as a string
  add_column :players, :price_temp, :string

  # Convert all prices back to the original format and store them in the new column
  # You would need a reverse conversion method for this

  # Remove the integer price column and rename the temporary column back
  remove_column :players, :price
  rename_column :players, :price_temp, :price
end

  private

  def convert_value_to_integer(value_string)
    # Conversion logic here (same as you used in your seeding script)
  end
end
