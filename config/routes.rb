Rails.application.routes.draw do


  get 'comments/new'
  root 'pages#index'

  get 'pages/help'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources 'users', only:[:new, :create]
  resources 'topics', only:[:index, :new, :create]

  resources 'favorites', only:[:index, :create]
  # get '/favorites', to: 'favorites#index'
  # post '/favorites', to: 'favorites#cretate'

  resources 'comments', only:[:new, :create]

end
