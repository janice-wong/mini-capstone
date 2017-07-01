Rails.application.routes.draw do
  get'/' => 'products#index'
  get'/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/cart' => 'carted_products#index'
  post '/add_to_cart' => 'carted_products#create'
  patch '/update_cart' => 'carted_products#update'

  get '/checkout' => 'orders#new'
  post '/order_confirmation' => 'orders#create'
end
