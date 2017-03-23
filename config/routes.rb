Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "contacts#index"
  get "/contacts" => "contacts#index"
  get "/contacts/new"=>"contacts#new"
  post "/contacts"=>"contacts#create"
  get "/contacts/:id"=>"contacts#show"
  delete "/contacts/:id"=>"contacts#destroy"
  get "/contacts/:id/edit" => "contacts#edit"
  patch "/contacts/:id" => "contacts#update"

  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"


end
