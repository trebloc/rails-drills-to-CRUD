class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render :index
  end

  def new
    @article = Article.new
    render :new
  end 

 def create
    article_params = params.require(:article).permit(:title, :content)
    @article = Article.create(article_params)
    redirect_to "/users/#{params[:user_id]}/articles/#{params[:article_id]}"
  end 

 def show
    @article = Article.find(params[:id])
    render :show
  end    	
end
