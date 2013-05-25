class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])

    if @product.save
      format.html { redirect_to @product, notice: 'Product was successfully created.' }
      format.json { render json: @product, status: :created, location: @product }
    else
      format.html { render action: "new" }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end

  def show

  end

  def update

  end

  def index

  end

  def edit

  end

  def destroy

  end
end