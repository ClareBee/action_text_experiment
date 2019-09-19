Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"

  resources :articles
  resources :mentions, only: [:index]
end
