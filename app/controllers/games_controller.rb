class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @locations = @game.locations
    # if logged_in?
    #   @user_found_game_location_ids = Found.where(user_id: current_user.id, game_location:@game.game_locations).pluck(:game_location_id)
      
    # end

  end

  def new
    if !logged_in?
      redirect_to '/users/new'
    end
  end

  def create
    game = Game.new
    game.name = params[:name]
    game.locations = Location.all.shuffle[0..5]
    game.save
    redirect_to "/games"
  end
end
