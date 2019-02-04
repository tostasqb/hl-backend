Rails.application.routes.draw do
  resources :menu_items
  resources :products

  get 'ping', to: 'ping#index'
  get 'ping_auth', to: 'ping#auth'
  get 'ping_db', to: 'ping#database'

  post 'authenticate', to: 'authentication#authenticate'
end
