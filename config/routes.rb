Rails.application.routes.draw do
  devise_for :users
  root to: "healths#index"

  resources :healths, only: [:index]
  resources :users, only: :show

  resources :body_conditions, only: [:new, :create, :edit, :update, :destroy]
  resources :weight_goals, only: [:new, :create, :edit, :update, :destroy]
  resources :bodyfat_goals, only: [:new, :create, :edit, :update, :destroy]

  resources :articles do
    collection do
      get 'search'
    end
  end
end
