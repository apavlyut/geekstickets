Rails.application.routes.draw do

  resources :projects

  resource :session
  resources :users

  concern :sortable do
    post :sort, on: :collection
    get :sort_menow, on: :member
  end

  resources :comments, concerns: :sortable

  resources :tickets do
    resources :comments
  end

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  get 'home/hello'
  # get 'home/hello', to: 'home#hello'

  root 'projects#index'
end
