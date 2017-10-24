class SessionsController < ApplicationController
  def new
    @user = User.new

  end

  def create
    @user = User.find_by(params[:username].downcase)
    if @user && @user.authenticate(params[:password])
      # authenticated
      # session[:user_id] = user.id
      redirect '/'
    else 
      @errors = @user.errors
      render :new
    end
  end

  def destroy

  end

end
