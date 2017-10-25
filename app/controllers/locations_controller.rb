class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    @founds = Found.where(game_locations_id: params[:id])
  end

  def new
    @locations = Location.new
  end

  def create
    location = Location.new
    location.name = params[:name]
    location.lat = params[:lat]
    location.long = params[:long]
    location.description = params[:description]
    location.image = params[:location][:image]
    location.save

    redirect_to '/locations'
  end

end
