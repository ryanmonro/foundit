class Api::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: @locations
  end

  def show
    @location = Location.find(params[:id])
    render json: @location
  end

  def close_enough
    user_lat = params[:lat].to_f
    user_long = params[:long].to_f
    game_location = GameLocation.find(params[:game_location_id])
    location = game_location.location
    distance = crow(user_lat, user_long, location.lat, location.long)
    result = distance < 0.01

    render json: {distance: distance, close_enough: result}
  end

end
