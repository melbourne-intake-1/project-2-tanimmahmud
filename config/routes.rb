Rails.application.routes.draw do
  resources :jobs
  resources :transactions, only: [:create]
  resources :searches
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
