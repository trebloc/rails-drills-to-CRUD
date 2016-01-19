Rails.application.routes.draw do
  root "welcome#index"  
  get "welcome/index"
  get "/albums", to: "albums#index", as: "albums"
  get "/albums/new", to: "albums#new", as: "new_album"
  post "/albums", to: "albums#create"
  get "/albums/:id", to: "albums#show", as: "album"
  get "/albums/:id/edit", to: "albums#edit", as: "edit_album"
  patch "/albums/:id", to: "albums#update"
  delete "/albums/:id", to: "albums#destroy"
end
