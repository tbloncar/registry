class RegistriesController < ApplicationController

  def create
    if !params[:lifestyle_type].empty?
      registry = Registry.new
      registry.name = "The #{current_user.last_name}'s Registry"
      registry.description = "A registry created by #{current_user.full_name}."
      registry.user_id = current_user.id
      if registry.save
        type = Type.find(params[:lifestyle_type])
        type.products.each do |product|
          RegistryProduct.create(registry_id: registry.id, product_id: product.id)
        end
        redirect_to user_registry_url(current_user), notice: "Nice! You created a registry!"
      else
        redirect_to :back, notice: "Something went wrong."
      end
    else
      redirect_to :back, notice: "Please choose a lifestyle."
    end
  end

  def update

  end

  def destroy

  end

  def show
    @user = User.find(params[:id])
    @registry = @user.registry
    @categories = Category.all
  end
end