class SessionsController < ApplicationController
  include SessionsHelper
  def new

  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      sign_in(@user)
      if @user.registry
        redirect_to user_registry_url(@user)
      else
        redirect_to wizard_account_url
      end
    else
      flash[:error] = "Hm. Something didn't match up."
      redirect_to sign_in_url
    end
  end

  def destroy
    sign_out
    redirect_to '/'
  end
end