Rails.application.routes.draw do
  root 'welcome#index'
  # get 'welcome/index'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]

      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

  resources :newevocations, only: [:create, :destroy]
  resources :prebuiltevocations, only: [:create, :destroy]
  resources :writings
  resources :images
  resources :sounds

  delete "/logout", to: "users#destroy"
  
end

