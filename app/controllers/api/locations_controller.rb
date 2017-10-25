class Api::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: @locations
  end

  def show
    @location = Location.find(params[:id])
    @founds = Found.where(game_locations_id: params[:id])
    render json: @location, @founds
  end

end
