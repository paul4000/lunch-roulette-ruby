class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActionController::RoutingError, with: :not_found
  rescue_from ActionController::UnknownController, with: :not_found
  rescue_from AbstractController::ActionNotFound, with: :not_found
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from CanCan::AccessDenied, with: :redirect_to_login

  def not_found 
    respond_to do |format|
      format.html { render 'errors/404', :layout => "application", :status => 404 }
      format.xml  { head 404 }
      format.any  { head 404 }
    end
  end  

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def redirect_to_login
  	redirect_to new_session_path
  end

end
