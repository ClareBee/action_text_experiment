Rails.application.routes.draw do
  resources :articles
  resources :shoutouts, only: [:index]
end
