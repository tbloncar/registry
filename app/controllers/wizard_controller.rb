class WizardController < ApplicationController
  include WizardHelper

  before_filter :redirect_if_not_signed_in
  before_filter :set_user

  def set_user
    @user = current_user
  end

  def account_information

  end

  def choose_lifestyle
    @registry = Registry.new
    @types = Type.all
  end
end