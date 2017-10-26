class GameLocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    @game_location = GameLocation.find_by(location_id: params[:id], game_id: params[:game_id])
    @founds = Found.where(game_location_id: @game_location.id)
    @user_has_found = false
    if logged_in?
      found = Found.where(game_location_id: @game_location.id, user_id: current_user.id)
      if found.count > 0
        @user_has_found = true
      end
    end
  end
end
