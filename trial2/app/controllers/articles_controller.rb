class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render :index
  end

  def new
    @article = Article.new
    render :new
  end  	
end
