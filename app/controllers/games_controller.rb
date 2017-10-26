class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @locations = @game.locations
    founds = @game.founds
    @scores = []
    @users = User.all
    @users.each do |user|
      if user.points_for_game(@game.id) > 0
        @scores.push user
      end
    end
    @scores.sort_by! {|user| user.points_for_game @game.id}
    @scores.reverse!
    @user_found_location_ids = []
    if logged_in?
      @game.founds.each do |gamefound|
        if gamefound.user == current_user
          new_id = gamefound.game_location.location.id
          @user_found_location_ids.push new_id
        end
      end
    end

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
