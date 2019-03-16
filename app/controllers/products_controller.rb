class ProductsController < ApplicationController
  skip_before_action :authenticate_request, only: :index
  
  # GET /products
  def index
    conditions = index_params

    @products = Product.page(conditions[:page] || 1)
                       .per(conditions[:per_page] || 3)

    render 'products/index'
    # render json: @products
  end

  def index_params
    params.permit(:page, :per_page, :format)
  end
end
