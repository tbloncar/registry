class RegistryProductsController < ApplicationController

  def show
    @product = Product.find(params[:product_id])
    @user = User.find(params[:id])
  end
end