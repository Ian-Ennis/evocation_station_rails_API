Rails.application.routes.draw do
  # get 'welcome/index'
  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]

      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

  resources :newevocations, only: [:index, :create, :destroy]
  resources :prebuiltevocations, only: [:index, :create, :destroy]
  resources :writings, only: [:index]
  resources :images, only: [:index]
  resources :sounds, only: [:index]

  delete "/logout", to: "users#destroy"
  
  get '*path',
  to: 'fallback#index',
  constraints: ->(req) { !req.xhr? && req.format.html? }
end

