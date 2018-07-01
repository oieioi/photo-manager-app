Rails.application.routes.draw do

  resources :sessions, only: [:create, :new]

  namespace :admin do
    get '/', to: 'dashboard#index'
  end
end
