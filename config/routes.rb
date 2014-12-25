TwitterCloneRailsOptimized::Application.routes.draw do
  root to: 'users#index'

  get '/register', to: 'users#new', as: 'register'

  resources :users, only: [:index, :create, :show]
end
