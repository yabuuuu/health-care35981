Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "healths#index"

  resources :healths, only: [:index]
  resources :users, only: [:show]
  resources :weights, only: [:new, :create, :edit, :update]

end
