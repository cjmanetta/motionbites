Rails.application.routes.draw do

  root 'home#index'

  resource :session, only: [:new, :create]
  resources :users, only: [:show]

end
