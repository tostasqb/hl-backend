class ProductsController < ApplicationController
  skip_before_action :authenticate_request, only: [:index, :show]
  
  # GET /products
  def index
    conditions = index_params

    @products = Product.page(conditions[:page] || 1)
                       .per(conditions[:per_page] || 3)

    render 'products/index'
    # render json: @products
  end

  def show
    @product = Product.includes(:product_tags, :tags).find_by(id: params[:id])

    render 'products/show'
    # render json: @product
  end

  def index_params
    params.permit(:page, :per_page, :format)
  end
end
