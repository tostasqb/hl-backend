class AmbiencesController < ApplicationController
  skip_before_action :authenticate_request, only: [:index, :show]
  before_action :set_ambience, only: %i[show update destroy]

  # GET /ambiences
  def index
    conditions = index_params

    @ambiences = Ambience.includes(:media)
                         .page(conditions[:page] || 1)
                         .per(conditions[:per_page] || 4)

    render 'ambiences/index'
    # render json: @ambiences
  end

  # GET /ambiences/1
  def show
    render json: @ambience
  end

  # POST /ambiences
  def create
    @ambience = Ambience.new(ambience_params)

    if @ambience.save
      render json: @ambience, status: :created, location: @ambience
    else
      render json: @ambience.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ambiences/1
  def update
    if @ambience.update(ambience_params)
      render json: @ambience
    else
      render json: @ambience.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ambiences/1
  def destroy
    @ambience.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ambience
    @ambience = Ambience.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def ambience_params
    # TODO: params.require(:item).permit()
  end

  def index_params
    params.permit(:page, :per_page, :format)
  end
end
