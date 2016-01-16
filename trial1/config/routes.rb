Rails.application.routes.draw do
  root to: "users#index"

  # grab the users
  def index
    @users = User.all
    render :index
  end
  
end
