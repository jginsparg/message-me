class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "The offering is accepted"
      redirect_to root_path
    else
      flash.now[:error] = "Incorrect username or password"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have logged out, but that is no true escape"
    redirect_to login_path
  end
end
