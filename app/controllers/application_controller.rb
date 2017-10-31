class ApplicationController < ActionController::Base
  def authenticate_user
    current_user
    if @current_user
      return true
    else
      redirect_to 'sessions#new'
      return false
    end
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
