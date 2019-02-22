Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :menu_items
  resources :products
  resources :ambiences

  get 'ping', to: 'ping#index'
  get 'ping_auth', to: 'ping#auth'
  get 'ping_db', to: 'ping#database'

  post 'authenticate', to: 'authentication#authenticate'
end
