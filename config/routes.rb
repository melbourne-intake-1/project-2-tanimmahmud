Rails.application.routes.draw do
  resources :jobs
  resources :transactions, only: [:create]
  resources :searches
  # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  # conversations
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end
  devise_scope :user do
    get "candidate" => "devise/registrations#new", :role => 'candidate'
    get "company" => "devise/registrations#new", :role => 'company'
  end
  devise_for :users, controllers: { registrations: "registrations"}
  root 'home#index'
  get 'home/candidates', to: 'home#candidates', as: 'candidates'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
