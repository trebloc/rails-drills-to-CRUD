class CommentsController < ApplicationController
  def create
    @album = Album.find(params[:album_id])
    @comment = @album.comments.create(comment_params)
    redirect_to album_path(@album)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end