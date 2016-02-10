Rails.application.routes.draw do
  resources :tickets

  get 'home/hello'
  # get 'home/hello', to: 'home#hello'

  root 'home#index'
end
