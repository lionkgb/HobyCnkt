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


  get "/bookings", to: 'bookings#index'
  get "/bookings/new", to: 'bookings#new'
  post "/bookings", to: 'bookings#create'

  get "/organizations", to: 'organizations#index'
  get "/organizations/new", to: 'organizations#new'
  get "/organizations/:id", to: 'organizations#show'
  post "/organizations", to: 'organizations#create'
  get "/organizations/:id/edit", to: 'organizations#edit'
  patch "/organizations/:id", to: 'organizations#update'
  delete "/organizations/:id", to: 'organizations#destroy'

  
end
