LittleBooks::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  delete '/logout', to: 'sessions#destroy'

  root :to => 'high_voltage/pages#show', :id => 'home'

  resources :stories do
    resources :mytales
  end
end
