Rails.application.routes.draw do
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"

  get 'spotify', to: 'main#spotify'
  get '/auth/spotify/callback', to: 'main#signedin'
  get '/authorize/spotify', to: 'main#spotify_login'

  # nestedness captures the hierarchial relationship between articles and comments 
  resources :articles do
    resources :comments
  end 
end
