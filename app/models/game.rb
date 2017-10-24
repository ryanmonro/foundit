class Game < ApplicationRecord
  has_many :game_locations
  has_many :locations, through: :game_locations

end
