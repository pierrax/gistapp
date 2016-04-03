Rails.application.routes.draw do

  get 'users/show'

  root to: 'home#index'

  devise_for :users
  resources :users
end
