class AddGamelocationToFounds < ActiveRecord::Migration[5.1]
  def change
    add_reference :founds, :game_locations, foreign_key: true
  end
end
