Rails.application.routes.draw do

  resources :rooms
  resources :users
  root 'rooms#home'
  resources :sessions, only: [:new,:create,:destroy]
  resources :otyrys, only: [:new,:create,:destroy]

  get 'signup', to: 'users#new', as:'signup'
  get 'login', to: 'otyrys#new', as: 'login'
  get 'logout', to: 'otyrys#destroy', as: 'logout'

  mount ActionCable.server, at: '/cable'
end
