class AmbiencesController < ApplicationController
  skip_before_action :authenticate_request, only: :index

  # GET /ambiences
  def index
    conditions = index_params

    @ambiences = Ambience.page(conditions[:page] || 1)
                         .per(conditions[:per_page] || 4)

    render 'ambiences/index'
  end

  def index_params
    params.permit(:page, :per_page, :format)
  end
end
