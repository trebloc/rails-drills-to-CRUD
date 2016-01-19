Rails.application.routes.draw do
  root to: "albums#index"

  get "/albums", to: "albums#index", as: "albums"  
end
