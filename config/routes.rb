Rails.application.routes.draw do
  root to: "healths#index"

  resources :healths, only: [:index]
end
