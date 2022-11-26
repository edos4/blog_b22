class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.name = params[:article][:name]
    @article.body = params[:article][:body]

    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def article_params
    params.require(:articles).permit(:name, :body)
  end
end
