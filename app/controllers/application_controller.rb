class ApplicationController < ActionController::API
  before_action :authenticate_request
  before_action :set_default_response_format
  before_action :set_raven_context
  before_action :allow_cors

  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end

  def set_default_response_format
    request.format = :json
  end

  def allow_cors
    headers['Access-Control-Allow-Origin'] = Rails.env == 'production' ? ENV['CORS_DOMAIN'] : '*'
    headers['Access-Control-Expose-Headers'] = 'ETag'
    headers['Access-Control-Allow-Methods'] = 'GET, POST, PATCH, PUT, DELETE, OPTIONS, HEAD'
    headers['Access-Control-Allow-Headers'] = '*,x-requested-with,Content-Type,If-Modified-Since,If-None-Match'
    headers['Access-Control-Max-Age'] = '86400'
  end

  def set_raven_context
    Raven.user_context(id: session[:current_user_id]) # or anything else in session
    Raven.extra_context(params: params.to_unsafe_h, url: request.url)
  end
end
