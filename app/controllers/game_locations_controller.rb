class GameLocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    @game_location = GameLocation.find_by(location_id: params[:id], game_id: params[:game_id])
    @founds = Found.where(game_location_id: @game_location.id)
    @user_has_found = false
    if logged_in?
      if @founds.pluck(:user_id).include? current_user.id
        @user_has_found = true
      end
    end
  end
end
