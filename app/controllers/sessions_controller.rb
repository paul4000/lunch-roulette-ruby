class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Hello #{user.name}"
      redirect_to recipes_path
    else
      flash[:notice] = "Email or password not correct"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, notice: "You are logged out"
  end
end
