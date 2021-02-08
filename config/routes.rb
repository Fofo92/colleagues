Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :bookings, only: [:index, :new, :create, :edit, :update]
  end

  resources :users, only: [:index, :show, :edit, :update]
end
