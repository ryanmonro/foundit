class AddPointsToFounds < ActiveRecord::Migration[5.1]
  def change
    add_column :founds, :points, :integer
  end
end
