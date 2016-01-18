Rails.application.routes.draw do
  get 'albums/index'

  get 'albums/show'

  get 'albums/edit'

  get 'albums/new'

  root to: "albums#index"
end
