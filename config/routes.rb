Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  # get 'sessions/create'
  # get 'sessions/destroy'
  resources :users
  resources :evocations
  resources :writings
  resources :images
  resources :sounds

  # get '/me', to: "users#show"
  get '/signup', to: "users#create"
  post "/login", to: "sessions#login"
  delete "/logout", to: "users#destroy"
  
  # get '/evocations', to: "evocations#index"

end

