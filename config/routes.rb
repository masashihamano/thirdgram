Rails.application.routes.draw do

  root 'pages#index'
  get 'pages/help'

  resources 'users', only:[:new, :create]

end
