Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"

    get "/sessions/new" => "sessions#new"
    post "/sessions" => "sessions#create"
  end

  get "courses" => "courses#index"
  get "courses/:id" => "courses#show"
  
  get "/users" => "users#index"
  get "/users/new" => "users#new"
  post "/users" => "users#create"

  get "/sessions/new" => "sessions#new"
  post "/sessions" => "sessions#create"

  get "/expressions" => "expressions#index"
  get "/expressions/:id" => "expressions#show"
end
