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

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(list_params)
      redirect_to products_path
    else
      render :edit
    end
  end

private
  def list_params
    params.require(:product).permit(:name, :cost, :country)
  end

end
