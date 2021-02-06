Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:index, :show, :edit, :update, :destroy]

  resources :users, only: [:index, :show, :edit, :update] do
    resources :events, only: [:new, :create]
  end
end
