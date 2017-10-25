class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @locations = @game.locations
  end

  def new
    if logged_in?
    else
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
