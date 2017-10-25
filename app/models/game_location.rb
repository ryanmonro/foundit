class GameLocation < ApplicationRecord
  belongs_to :game
  belongs_to :location
  has_many :founds
end
