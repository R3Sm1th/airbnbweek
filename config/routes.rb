Rails.application.routes.draw do
  get 'properties/new'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :properties do
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookings, only: [:index, :show, :destroy]
  resources :reviews, only: [:destroy]
end
