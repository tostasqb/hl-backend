class PiecesController < ApplicationController
  skip_before_action :authenticate_request, only: [:index]

  # GET /pieces
  def index
    conditions = index_params
    return render 'pieces/index' if conditions[:piece].blank?
    
    @pieces = Piece.where(key: conditions[:piece])

    render 'pieces/index'
  end


  def index_params
    params.permit(:piece, :format)
  end
end
