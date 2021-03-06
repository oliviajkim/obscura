Rails.application.routes.draw do
  root to: 'cities#index'

  resources :users, only: [:new, :create, :show]

  # get '/users', to: 'users#index', as: 'users'

  # get '/users/new', to: 'users#new', as: 'new_user'

  # post '/users', to: 'users#create'

  # get '/users/:id', to: 'users#show', as: 'user'

  get '/sign_in', to: 'sessions#new', as: 'new_session'

  resources :sessions, only: [:new, :create]
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  resources :cities, only: [:index, :new, :create, :show] do 

  # get '/cities', to: 'cities#index', as: 'cities'

  # get '/cities/new', to: 'cities#new', as:'new_city'

  # post '/cities', to: 'cities#create'

  # get '/cities/:id', to: 'cities#show', as: 'city'


  # get '/logout', to: 'cities#index'

    resources :posts, only: [:new, :create, :show, :edit, :update, :destroy]
  end

  # get '/cities/:id/posts', to: 'posts#index', as: 'posts'

  # get '/cities/:id/posts/new', to: 'posts#new', as: 'new_post'

  # post '/cities/:id/posts', to: 'posts#create'

  # get '/cities/:id/posts/:id', to: 'posts#show'

end