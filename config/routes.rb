Rails.application.routes.draw do
  post '/orders/neworder', to: 'orders#new_order'
  post '/login', to: 'sessions#create'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  get '/get_current_user', to: 'sessions#get_current_user'
  post '/orders/neworder', to: 'orders#neworder'

  post '/add_cart', to: 'order_items#create'
  
  resources :users

  resources :orders
  resources :order_items
  
  resources :companies do 
    resources :goods
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
