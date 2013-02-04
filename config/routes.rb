ActsAsBloggable::Engine.routes.draw do
  resources :posts


  resources :pages


  resources :comments


  resources :assets


  resources :sections


  resources :versions


  resources :categories


  #get "home/index"

  match '/login' => 'sessions#new', :as => :login
  root to: "home#index"
  match "/auth/:provider/callback", to: "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/logout", to: "sessions#destroy", :as => "logout"
  resources :identities
  resources :home
end
