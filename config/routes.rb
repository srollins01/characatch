Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/autocomplete', to: 'listings#autocomplete'

  resources :listings, only: [:index, :show] do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[index new create]
  end

  get "/dashboard", to: "dashboard#show"
  resources :reviews, only: %i[edit update destroy]
end
