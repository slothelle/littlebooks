LittleBooks::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  delete '/logout', to: 'sessions#destroy'

  root :to => 'stories#show', id: 4

  resources :stories do
    resources :mytales do
      resources :mytale_images
    end
  end

  get '/images' => 'mytale_images#index', :as => :all_images

  get '/stories/:story_id/mytales/:mytale_id/print' => 'mytales#print', :as => :print_mytale

  get '/stories/:story_id/mytales/:mytale_id/read' => 'mytales#read', :as => :read_mytale

  get '/auth/facebook/callback' => 'facebook#create', :as => :facebook_login
  get '/auth/failure' => 'stories#index'
end
