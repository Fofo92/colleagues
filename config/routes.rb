Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:index, :show, :edit, :update, :delete]

  resources :users, only: [:index, :show] do
    resources :events, only: [:new, :create]
  end
end
