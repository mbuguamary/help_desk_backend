Rails.application.routes.draw do
  resources :users
  resources :departments
  resources :categories
  resources :tickets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
