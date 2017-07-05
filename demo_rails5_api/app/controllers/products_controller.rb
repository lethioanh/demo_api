class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  def index
    products = Product.all

    # render json: products
    render json: products, each_serializer: Product::ProductSerializer
  end

  def show
    # render json: @product
    render json: @product, serializer: Product::ShowSerializer
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
end
