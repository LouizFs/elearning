Rails.application.routes.draw do
  root 'home#index'
  resources :courses
  get 'privacy_policy', to: "static_pages#privacy_policy"
end
