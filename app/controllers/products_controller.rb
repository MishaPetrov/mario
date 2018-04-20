class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new(list_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

private
  def list_params
    params.require(:product).permit(:name)
  end

end
