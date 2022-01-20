Rails.application.routes.draw do
  devise_for :users

  root 'home#index'
  resources :courses
  resources :users, only: %i(index)
  get 'privacy_policy', to: "static_pages#privacy_policy"
end
