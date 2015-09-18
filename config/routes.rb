Rails.application.routes.draw do
  resources :users, only: [:create, :new, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :bands
  resources :albums, except: [:index]
  resources :tracks, except: [:index]

  root 'bands#index'
end
