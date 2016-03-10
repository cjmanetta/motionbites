Rails.application.routes.draw do

  root to: "home#index"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:show, :new, :create]

end
