class GameLocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    # game = Game.findby(name: @location.name)
    # @game_locations = game.game_locations
  end
end
