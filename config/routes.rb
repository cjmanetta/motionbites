Rails.application.routes.draw do

  root to: "home#index"

  resource :session, only: [:new, :create]
  resources :users, only: [:show, :new, :create]

end
