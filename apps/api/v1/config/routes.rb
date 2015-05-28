# Get user has id
resources :users, only: [:index, :show]
resources :users, only: [:index]