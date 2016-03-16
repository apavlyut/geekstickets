Rails.application.routes.draw do

  resources :projects

  resource :session
  resources :users

  resources :comments

  resources :tickets do
    resources :comments
  end

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  get 'home/hello'
  # get 'home/hello', to: 'home#hello'

  root 'tickets#index'
end
