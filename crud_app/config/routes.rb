Rails.application.routes.draw do
  root "albumss#index"

  get "/albums", to: "albums#index", as: "albums"
end
