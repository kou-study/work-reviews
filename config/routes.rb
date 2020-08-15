Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  get 'favorites', to: 'users#favorites'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'movies/:category/:initial', to: 'movies#index', as: 'movies'
  
  resources :movies, only: [:show]
  resources :users, only: [:show, :new, :create]
end
