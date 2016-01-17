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

  def edit
    @article = Article.find_by_id(params[:id])
  end

  def update
    article_params = params.require(:article).permit(:title, :content)
    @article = Article.find_by_id(params[:id])
    @article.update_attributes(article_params)
    redirect_to 
   end

def destroy
    @article = Article.find_by_id(params[:id])
    @article.destroy
    redirect_to "/users/#{params[:user_id]}/articles"
  end     
end
