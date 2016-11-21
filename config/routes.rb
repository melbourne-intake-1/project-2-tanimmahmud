Rails.application.routes.draw do
  resources :jobs
  resources :transactions, only: [:create]
  resources :searches
  resources :messages, only: [:new, :create]
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
    delete :empty_trash
    end
  end
  devise_for :users
  root 'home#index'
  get 'home/candidates', to: 'home#candidates', as: 'candidates'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
