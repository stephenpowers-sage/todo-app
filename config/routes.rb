Rails.application.routes.draw do
  # home page
  root to: "site#index"
  # about page
  get 'about', to: 'site#about'

  # users
  resources :users, only: [:new, :create]

  #sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'logout', to: 'sessions#logout'
end
