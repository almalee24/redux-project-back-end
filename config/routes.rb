Rails.application.routes.draw do
  resources :orders
  resources :order_items
  post '/orders/neworder', to: 'orders#new_order'
  post '/login', to: 'sessions#create'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  get '/get_current_user', to: 'sessions#get_current_user'
  
  resources :users
  resources :goods 
  resources :companies 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
