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
    @article = Article.create(article_params)
	  redirect_to user_articles_path
  end 

	private

   def article_params
   	params.require(:article).permit(:title, :content)
  end 
end
