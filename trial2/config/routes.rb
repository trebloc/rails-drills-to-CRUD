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
  get "/users/:user_id/articles/:id", to: "articles#show"  
  get "/users/:user_id/articles/:id/edit", to: "articles#edit", as: "edit_article"
  patch "/users/:user_id/articles/:id", to: "articles#update", as: "patch_article"  
  delete "/users/:user_id/articles/:id", to: "articles#destroy", as: "delete_article" 
end


# redirect_to "/users/#{params[:user_id]}/articles/#{params[:article_id]}"

#        Prefix Verb   URI Pattern                                 Controller#Action
#          root GET    /                                           users#index
#         users GET    /users(.:format)                            users#index
#      new_user GET    /users/new(.:format)                        users#new
#               POST   /users(.:format)                            users#create
#          user GET    /users/:id(.:format)                        users#show
#         login GET    /login(.:format)                            sessions#new
#        logout GET    /logout(.:format)                           sessions#destroy
#      sessions POST   /sessions(.:format)                         sessions#create
# user_articles GET    /users/:user_id/articles(.:format)          articles#index
#   new_article GET    /users/:user_id/articles/new(.:format)      articles#new
#               POST   /users/:user_id/articles/:id(.:format)      articles#create
#               GET    /users/:user_id/articles/:id(.:format)      articles#show
#  edit_article GET    /users/:user_id/articles/:id/edit(.:format) articles#edit
#               PATCH  /users/:user_id/articles/:id(.:format)      articles#update
#               DELETE /users/:user_id/articles/:id(.:format)      articles#destroy

