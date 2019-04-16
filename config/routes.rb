Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/ambiences', to: 'ambiences#index'
  get '/pieces', to: 'pieces#index'
  get '/products', to: 'products#index'
  get '/product/:id', to: 'products#show'
  get '/product', to: 'products#show'
  get '/tags', to: 'tags#index'

  get 'ping', to: 'ping#index'
  get 'ping_auth', to: 'ping#auth'
  get 'ping_db', to: 'ping#database'

  post 'authenticate', to: 'authentication#authenticate'
end
