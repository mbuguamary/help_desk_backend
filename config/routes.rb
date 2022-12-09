Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/tickets", to: "tickets#index"
  get "/tickets/:id", to: "tickets#show"
  post "/tickets", to: "tickets#create"
  patch "/tickets/:id", to: "tickets#update"
  delete "/tickets/:id", to: "tickets#destroy"
  get "departments", to: "departments#index"
  post "departments", to: "departments#create"
  get "categories", to: "categories#index"
  post "categories", to: "categories#create"
  get "/signup", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  post "/destroy", to: "sessions#destroy"
end
