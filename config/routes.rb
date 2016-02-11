Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/show'

  get 'comments/new'

  get 'comments/create'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  resource :session
  resources :users
  resources :tickets

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  get 'home/hello'
  # get 'home/hello', to: 'home#hello'

  root 'tickets#index'
end
