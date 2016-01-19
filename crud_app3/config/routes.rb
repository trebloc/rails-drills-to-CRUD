Rails.application.routes.draw do
  root to: "albums#index"
  get "album/index"
  get "/albums", to: "albums#index", as: "albums"
  get "/albums/new", to: "albums#new", as: "new_album"
  post "/albums", to: "albums#create"
  get "/albums/:id", to: "albums#show", as: "show_album"
  get "/albums/:id/edit", to: "albums#edit", as: "edit_album"
  patch "/albums/:id", to: "albums#update", as: "patch_album"
  delete "/albums/:id", to: "albums#destroy", as: "delete_album"

resources :albums do
  resources :comments
end
end