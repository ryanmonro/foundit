class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new
    username = params[:user][:username].downcase
    @user.username = username
    @user.email = params[:user][:email]
    @user.image = params[:user][:image]
    @user.description = params[:user][:description]
    if User.find_by(username: username)
      @errors = "Username already taken"
      render :new
    else
      @user.password = params[:user][:password]
      @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    end
  end

  def new
    @user = User.new

  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
    else
      redirect_to "/users/#{@user.id}"
    end
  end

  def update
    user = User.find(params[:id])
    user.image = params[:user][:image]
    user.description = params[:user][:description]
    user.save

    redirect_to "/users/#{user.id}"
  end

  def index
    users = User.all
    @users = []
    users.each do |user|
      @users.push user
    end
    @users.sort_by! {|user| user.points}
    @users.reverse!
  end
end
