Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: 'dashboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/items", to: "items#items"
  get "/sleep", to: "items#sleep"
  get "/feeding", to: "items#feeding"
  get "/travel" , to: "items#travel"
  get "/play", to: "items#play"

  resources :items do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :destroy]
end
