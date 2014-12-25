class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      flash[:notice] = 'You were logged in'
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:error] = "There's something wrong with your username or password"
      render :new
    end
  end

  def destroy
    flash[:notice] = 'You successfully logged out'
    session[:user_id] = nil
    redirect_to root_path
  end
end