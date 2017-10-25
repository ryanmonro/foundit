class RenameGamelocationsidInFounds < ActiveRecord::Migration[5.1]
  def change
    rename_column :founds, :game_locations_id, :game_location_id
  end
end
