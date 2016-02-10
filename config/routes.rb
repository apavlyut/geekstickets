Rails.application.routes.draw do
  resource :session
  resources :users
  resources :tickets

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  get 'home/hello'
  # get 'home/hello', to: 'home#hello'

  root 'tickets#index'
end
