Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard'
  get 'devise', to: 'pages#devise'

  resources :greenspaces, only: %i[new create index show] do
    resources :walks, only: %i[new create show edit update]
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: %i[edit destroy update]
end
