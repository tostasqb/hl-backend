class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: %i[show update destroy]

  # GET /menu_items
  def index
    @menu_items = MenuItem.all

    render json: @menu_items
  end

  # GET /menu_items/1
  def show
    render json: @item
  end

  # POST /menu_items
  def create
    @item = MenuItem.new(menu_item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menu_items/1
  def update
    if @item.update(menu_item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menu_items/1
  def destroy
    @item.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_menu_item
    @item = MenuItem.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def menu_item_params
    params.require(:item).permit(:name, :description)
  end
end
