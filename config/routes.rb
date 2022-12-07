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

  resources :newevocations
  resources :prebuiltevocations
  resources :writings
  resources :images
  resources :sounds

  delete "/logout", to: "users#destroy"
  
  get '*path',
  to: 'fallback#index',
  constraints: ->(req) { !req.xhr? && req.format.html? }
end

