Rails.application.routes.draw do

  get "/posts", to: "posts#index", as: 'posts'
  get "/posts/new", to: "posts#new"
  post "/posts", to: "posts#create"
  get "/posts/:id", to: "posts#show", as: 'post'

  get "/signup", to: "sessions#new", as: "signup"

  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"

  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"

end
