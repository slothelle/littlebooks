LittleBooks::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/auth/facebook/callback', :to => 'sessions#create'
  match '/auth/failure', :to => redirect('/')
  #do we need this since we already have the delete route below?
  #match '/logout', :to => 'sessions#destroy'

  delete '/logout', to: 'sessions#destroy'

  root :to => 'stories#index', :id => 'home'

  resources :stories do
    resources :mytales
  end
end
