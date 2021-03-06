Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard'
  get 'charts', to: 'pages#charts'
  get 'devise', to: 'pages#devise'
  get 'diary', to: 'pages#diary'

  resources :greenspaces, only: %i[new create index show] do
    resources :walks, only: %i[new create show edit update]
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: %i[edit destroy update]
end
