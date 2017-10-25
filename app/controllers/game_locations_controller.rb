class GameLocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    game_id = GameLocation.where(location_id: @location, game_id: params[:game_id])
    @founds = Found.where(game_location_id: game_id)
  end
end
