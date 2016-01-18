class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render :index
  end

  def show
  end

  def edit
  end

  def new
  end
end
