Rails.application.routes.draw do
  resources :menu_items
  post 'authenticate', to: 'authentication#authenticate'
end
