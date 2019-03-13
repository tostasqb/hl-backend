class ProductsController < ApplicationController
  skip_before_action :authenticate_request, only: [:index, :show]
  before_action :set_product, only: %i[show update destroy]

  # GET /products
  def index
    conditions = index_params

    @products = Product.includes(:menu_item)
                       .page(conditions[:page] || 1)
                       .per(conditions[:per_page] || 3)

    render 'products/index'
    # render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def product_params
    params.require(:item).permit(:title, :description, :menu_item_id, images: [])
  end

  def index_params
    params.permit(:page, :per_page, :format)
  end
end
