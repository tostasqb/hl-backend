class AmbiencesController < ApplicationController
  skip_before_action :authenticate_request, only: :index

  # GET /ambiences
  def index
    conditions = index_params

    @ambiences = Ambience.page(conditions[:page] || 1)
                         .per(conditions[:per_page] || 4)
                         .order(id: :desc)

    # send image size depending on device
    @size = image_size(conditions[:device])

    render 'ambiences/index'
  end

  def image_size(device)
    return 1224 if device == 'desktop'
    return 800 if device == 'tablet'

    388
  end

  def index_params
    params.permit(:page, :per_page, :device, :format)
  end
end
