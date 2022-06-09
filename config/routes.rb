Rails.application.routes.draw do
  root 'welcome#index'
  # get 'welcome/index'
  get 'prebuilt/evocation'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  resources :users
  resources :newevocations
  resources :prebuiltevocations
  resources :writings
  resources :images
  resources :sounds

  get '/signup', to: "users#create"
  post "/login", to: "sessions#login"
  delete "/logout", to: "users#destroy"
  
end

