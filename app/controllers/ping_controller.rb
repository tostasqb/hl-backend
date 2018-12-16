class PingController < ApplicationController
  skip_before_action :authenticate_request, only: :index

  def index
    render json: { status: 'ok' }, status: 200
  end

  def auth
    render json: { status: 'ok' }, status: 200
  end
end