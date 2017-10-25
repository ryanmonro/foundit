class RemoveLocationIdFromFounds < ActiveRecord::Migration[5.1]
  def change
    remove_column :founds, :location_id, :string
  end
end
