class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    render :index
  end	

  def new
		@album = Album.new
		render :new  	
  end
  
	def create
	  @album = Album.new(album_params)
	  @album.save
    redirect_to albums_path
	end

	def show
		@album = Album.find(params[:id])
		render :show
	end

  def edit
    @album = Album.find_by_id(params[:id])
  end	

	def update
    @album = Album.find_by_id(params[:id])
    @album.update_attributes(album_params)
    render :show
  end  

  def destroy
    @album = Album.find_by_id(params[:id])
    @album.destroy
    redirect_to albums_path
  end 

 
	private
	  def album_params
	    params.require(:album).permit(:artist, :album)
	  end
	end  
