class ProductsController < ApplicationController
  skip_before_action :authenticate_request, only: [:index, :show]
  
  # GET /products
  def index
    conditions = index_params

    filter = conditions[:filter] ? JSON.parse(conditions[:filter]) : {}
    filter.reject! { |a, v| v == false }

    @products = if filter.blank?
                  Product.page(conditions[:page] || 1)
                    .per(conditions[:per_page] || 3)
                else
                  Product.joins(:tags)
                    .where('tags.name' => filter.keys)
                    .distinct
                    .page(conditions[:page] || 1)
                    .per(conditions[:per_page] || 3)
                end

    render 'products/index'
  end

  def show
    @product = Product.includes(:product_tags, :tags).find_by(id: params[:id])

    render 'products/show'
  end

  def index_params
    params.permit(:page, :per_page, :filter, :format)
  end
end
