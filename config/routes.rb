Rails.application.routes.draw do

  root 'home#index'
  get '/about', to: 'home#about'

  resources :exhibitions, only: [:show]
  resources :texts, only: [:show]

  namespace :admin do
    get '/', to: 'sessions#new'
    resources :dashboard, only: [:index]
    resources :sessions, only: [:create, :new, :destroy]
    resources :sites, only: [:update, :edit]
    resources :exhibitions
    resources :texts
  end
end
