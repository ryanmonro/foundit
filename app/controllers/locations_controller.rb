class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    @founds = Found.all
  end

  def new
    @locations = Location.new
  end

  def create

  end


end
