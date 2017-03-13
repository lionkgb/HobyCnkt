Rails.application.routes.draw do
  get "/" => 'courses#index'
  get "/courses/new" => 'courses#new'
  post "courses/search" => 'courses#search'
  get "/courses/:id" => 'courses#show'
  get "/courses/:id/edit" => 'courses#edit'
  post "/courses" => 'courses#create'
  patch "/courses/:id" => 'courses#update'
  delete "/courses/:id" => 'courses#destroy'

  get "/signup" => 'users#new'
  post "/users" => 'users#create'

  get "/login" => 'sessions#new'
  post "/login" => 'sessions#create'
  delete "/logout" => 'sessions#destroy'

  post "/orders" => 'orders#create'
  get "/orders/:id" => 'orders#show' 
end
