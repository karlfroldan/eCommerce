Rails.application.routes.draw do
  # Reroute the homepage
  root :to => 'items#show_homepage'

  get '/login', to: 'pages#show_login' # Show the login form
  post '/login', to: 'pages#create_login' 

  # Logout
  get '/logout', to: 'pages#logout'

  # Search
  post '/items/find', to: 'items#find'

  resources :items
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
