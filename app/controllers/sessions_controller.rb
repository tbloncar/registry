class SessionsController < ApplicationController
  include SessionsHelper
  def new

  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.authenticate(params[:password])
      sign_in(@user)
      redirect_to user_url(@user)
    else
      render '/sign-in'
    end
  end

  def destroy

  end
end