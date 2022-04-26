Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users, only: [:create, :destroy]

  get '/me', to: "users#show"
  get '/signup', to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
