class ProductsController < ApplicationController
  
  before_action :set_product, only: :show
  
  def index
    render json: @products = Product.all.order(:id)
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: Product.find(params[:id])
  end

  private

  def load_products
    permitted = params.permit({ search: :description })
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      :name, :description, :price, :product_category_id #[:title, :restaurant]
    )
  end
end