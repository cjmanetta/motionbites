class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def logged_in?
    !!current_user
  end

  def login(user)
    session[:user_id] = user.id
  end

  def current_user
    return nil if session[:user_id].blank?
    @current_user ||= User.where(id: session[:user_id]).first
  end
end
