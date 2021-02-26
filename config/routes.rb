Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/team', to: 'pages#team'

  resources :events, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :bookings, only: [:index, :create]
    resources :messages, only: :create
  end
  resources :bookings, only: :update

  resources :users, only: [:index, :show, :edit, :update] do
    resources :messages, only: :index
  end

  # post '/events/:event_id/bookings/', to: 'bookings#book', as: :book
end
