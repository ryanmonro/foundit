class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    if logged_in?
    @locations = Location.new
    else
      redirect_to '/users/new'
    end
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
