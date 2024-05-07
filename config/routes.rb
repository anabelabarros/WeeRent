Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  get "/feeding", to: "pages#index"
  get "/sleep", to: "pages#index"

  # Defines the root path route ("/")
# <<<<<<< show
  # root "posts#index
#   resources :items
  resources :bookings
#   resources :users, only: [:new, :create, :edit, :update]



#   get '/login', to: 'sessions#new', as: 'login'
#   post '/login', to: 'sessions#create'
#   delete '/logout', to: 'sessions#destroy', as: 'logout'
# =======
  # root "posts#index"
  resources :items
# >>>>>>> master
end
