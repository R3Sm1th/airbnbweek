Rails.application.routes.draw do
  get 'properties/new'
  devise_for :users
  root to: "pages#home"
  get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :properties do
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create]
  end
  get '/mylistings', to: 'properties#mylistings'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookings, only: [:index, :destroy]
  get '/bookings/:id.pdf', to: 'bookings#show', format: false, as: 'booking_pdf'

  resources :reviews, only: [:destroy]
end
