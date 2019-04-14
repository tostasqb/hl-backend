class PiecesController < ApplicationController
  skip_before_action :authenticate_request, only: [:index]

  # GET /pieces
  def index
    conditions = index_params
    return render json: [] if conditions[:piece].blank?
    
    @pieces = Hash[Piece.where(key: conditions[:piece]).pluck(:key, :value)]
    render json: @pieces
  end


  def index_params
    params.permit(:format, :piece => [])
  end
end
