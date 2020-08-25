Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'movies/:id/posts', to: 'movies#posts', as: 'posts'
  get 'movies/:category/:initial', to: 'movies#index', as: 'movies'
  
  post 'movies/:id/posts', to: 'posts#create'

  resources :movies, only: [:show] do
    collection do
      get :ranking
    end
  end
  
  resources :users, only: [:show, :new, :create] do
    member do
      get :favorites
    end
  end
  
  resources :favorites, only: [:create, :destroy]
 
end
