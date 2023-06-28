Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/items" => "items#index"

  post "/items" => "items#create"

  patch "/items/:id" => "items#update"

  delete "/items/:id" => "items#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
end
