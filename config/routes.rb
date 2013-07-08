LittleBooks::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  delete '/logout', to: 'sessions#destroy'

  root :to => 'stories#index', :id => 'home'

  resources :stories do
    resources :mytales do
      resources :mytale_images
    end
  end

  get '/stories/:story_id/mytales/:mytale_id/print' => 'mytales#print', :as => :print_mytale

  # get '/stories/:story_id/mytales/:mytale_id/read' => 'mytales#read', :as => :read_mytale
end
