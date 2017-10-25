class Api::FoundsController < ApplicationController
  def create
    found = Found.new
    found.user_id = params[:user_id]
    found.game_locations_id = params[:game_locations_id]
    if condition

    end
  end
end
