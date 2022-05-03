Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  # get 'sessions/create'
  # get 'sessions/destroy'
  resources :users, only: [:index, :create, :show, :destroy]

  get '/me', to: "users#show"
  get '/signup', to: "users#create"

  # routes to log in and log out using a session activation/destroyal
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # test
end
