class ApplicationController < ActionController::Base
  helper_method :current_user 
  helper_method :logged_in?

  def logged_in?
    !current_user.nil?
  end

private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
    
  def authorize
    redirect_to login_url, alert: "You must be logged/signed up to access" if current_user.nil?
  end
end
