Rails.application.routes.draw do
  get "/" => 'courses#index'
  get "/courses/new" => 'courses#new'
  post "courses/search" => 'courses#search'
  get "/courses/:id" => 'courses#show'
  get "/courses/:id/edit" => 'courses#edit'
  post "/courses" => 'courses#create'
  patch "/courses/:id" => 'courses#update'
  delete "/courses/:id" => 'courses#destroy'
end
