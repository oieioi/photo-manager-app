Rails.application.routes.draw do

  root 'home#index'
  get '/about', to: 'home#about'

  resources :exhibitions, only: [:show]
  resources :texts, only: [:show]

  resources :sessions, only: [:create, :new]
  namespace :admin do
    get '/', to: 'dashboard#index'
    resources :sites, only: [:update, :edit]
    resources :exhibitions
    resources :texts
  end
end
