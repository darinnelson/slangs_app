Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"

    post "/sessions" => "sessions#create"
  end
  
  get "/users/new" => "users#new"
  post "/users" => "users#create"
end
