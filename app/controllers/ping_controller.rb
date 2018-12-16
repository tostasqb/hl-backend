class PingController < ApplicationController
  skip_before_action :authenticate_request, only: [:index, :database]

  def index
    render json: { status: 'ok' }, status: 200
  end

  def auth
    render json: { status: 'ok' }, status: 200
  end

  def database
    render json: { status: 'ok', menu_item: MenuItem.new }, status: 200
  end
end