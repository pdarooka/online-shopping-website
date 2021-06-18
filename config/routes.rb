Rails.application.routes.draw do
  resources :users
  resources :orders
  resources :lineitems
  resources :carts

  get 'login', to: 'access#new', as: 'login'
  post 'login', to: 'access#create'
  get 'admin', to: 'admin#index', as: 'admin'
  delete 'logout', to: 'access#destroy', as: 'logout'

  get 'shopper/index'
  post 'shopper/index'

  root "shopper#index", as: "shopper"
  
  resources :products
end