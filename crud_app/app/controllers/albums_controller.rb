class AlbumsController < ApplicationController
  def index
  end

  def new
  end  

  def create
  render plain: params[:album].inspect  	
  end  
end
