class Api::FoundsController < ApplicationController
  def create
    # location = Location.find(params[:id])
    # game_location = GameLocation.find_by(location_id: location, game_id: params[:game_id])
    founds = Found.where(game_location_id: params[:game_location_id])

    found = Found.new
    found.user_id = params[:user_id]
    found.game_location_id = params[:game_location_id]
    if founds.count >= 3
      points = 1
    elsif founds.count < 1
      points = 4
    elsif founds.count == 1
      points = 3
    elsif founds.count == 2
      points = 2
    end
    found.points = points
    found.save
    render json: {points: points, founds: founds.count}
  end
end
