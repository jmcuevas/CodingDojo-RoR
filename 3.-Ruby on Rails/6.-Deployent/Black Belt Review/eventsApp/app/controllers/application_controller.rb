class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in_user
      User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :logged_in_user
end
