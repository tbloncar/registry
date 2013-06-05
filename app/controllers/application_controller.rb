class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def redirect_if_not_signed_in
    if current_user.nil?
      flash[:error] = "You must be signed in to access this page."
      redirect_to root_url
    end
  end
end