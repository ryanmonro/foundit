class Game < ApplicationRecord
  has_many :game_locations
  has_many :locations, through: :game_locations
  has_many :founds, through: :game_locations
end
