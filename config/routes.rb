Rails.application.routes.draw do
  root to: 'gists#index'

  devise_for :users
  resources :users

  resources :gists
  get '/search' => 'gists#search', as: 'search'
  get '/gists/:id/download' => 'gists#download', as: 'download'

  default_url_options host: 'test.host'
end
