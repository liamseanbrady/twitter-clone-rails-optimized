TwitterCloneRailsOptimized::Application.routes.draw do
  root to: 'users#index'

  resources :users, except: [:edit, :update, :destroy]
end
