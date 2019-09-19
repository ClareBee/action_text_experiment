Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"

  resources :articles

  get 'gallery', to: 'articles#gallery'

  resources :mentions, only: [:index]
end
