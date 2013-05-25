class AdminSessionsController < ApplicationController
  include AdminSessionsHelper
  def new

  end

  def create
    @admin = Admin.find_by_email(params[:email])
    if @admin && @admin.authenticate(params[:password])
      admin_sign_in(@admin)
      redirect_to admin_url(@admin)
    else
      render 'new'
    end
  end

  def destroy
    admin_sign_out
    redirect_to '/'
  end
end