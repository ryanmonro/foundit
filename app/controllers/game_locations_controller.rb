class GameLocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    @game_location = GameLocation.find_by(location_id: params[:id], game_id: params[:game_id])
    @founds = Found.where(game_location_id: @game_location.id)
  end
end
