Rails.application.routes.draw do
  resources :jobs
  resources :transactions, only: [:create]
  resources :searches
  resources :conversations, only: [:index, :show, :destroy]
  resources :messages, only: [:new, :create]
  devise_for :users
  root 'home#index'
  get 'home/candidates', to: 'home#candidates', as: 'candidates'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
