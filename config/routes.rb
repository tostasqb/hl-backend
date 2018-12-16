Rails.application.routes.draw do
  resources :menu_items
  
  get 'ping', to: 'ping#index'
  get 'ping_auth', to: 'ping#auth'

  post 'authenticate', to: 'authentication#authenticate'
end
