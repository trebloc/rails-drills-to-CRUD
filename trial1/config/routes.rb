Rails.application.routes.draw do
  root to: "users#index"

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy" # <-- strictly speaking this isn't RESTful (it should be a DELETE not GET), but it's super conveient to do it this way
  post "/sessions", to: "sessions#create"

  get "/users/:user_id/articles", to: "articles#index", as: "user_articles"
  get "/users/:user_id/articles/new", to: "articles#new", as: "new_article" 
  post "/users/:user_id/articles/:id", to: "articles#create"
  get  "/users/:user_id/articles/:id", to: "articles#show"  
  get "/users/:user_id/articles/:id/edit", to: "articles#edit", as: "edit_article"
  patch "/users/:user_id/articles/:id", to: "articles#update"  
end