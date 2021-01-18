Rails.application.routes.draw do
  root to: "site#index"
  get 'about', to: 'site#about'
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
