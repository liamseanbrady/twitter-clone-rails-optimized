TwitterCloneRailsOptimized::Application.routes.draw do
  root to: 'users#index'

  get '/register', to: 'users#new', as: 'register'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users, only: [:index, :create, :show]
end
