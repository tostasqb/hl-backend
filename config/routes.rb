Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/tags', to: 'tags#index'
  get '/products', to: 'products#index'
  get '/ambiences', to: 'ambiences#index'

  get 'ping', to: 'ping#index'
  get 'ping_auth', to: 'ping#auth'
  get 'ping_db', to: 'ping#database'

  post 'authenticate', to: 'authentication#authenticate'
end
