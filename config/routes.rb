LittleBooks::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  delete '/logout', to: 'sessions#destroy'

  root :to => 'high_voltage/pages#show', id: "home"

  resources :stories do
    resources :mytales do
      get :print, :on => :member
      get :read, :on => :member
      resources :mytale_images
    end
  end

  get '/images' => 'mytale_images#index', :as => :all_images

  get '/auth/facebook/callback' => 'facebook#create', :as => :facebook_login
  get '/auth/failure' => 'stories#index'
end
