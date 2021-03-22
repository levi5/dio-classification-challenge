Rails.application.routes.draw do
  root to: "home#show"

  # get "/users/new", to: "users#new"
  # post "/users",    to: "users#create"
  
  resources :users, only: [:new, :create]
  
  #login
  resources :sessions, only: [:new, :create] do
    
    collection do
      delete "sign_out", to: "sessions#destroy", as: "sign_out"  
    end
  end
end
