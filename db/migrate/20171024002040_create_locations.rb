class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.string :image
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
