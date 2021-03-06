class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    if article.save
    redirect_to  article
    else  
      flash[:errors] = article.errors.messages
      redirect_to new_article_path
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    #p params
    article = Article.find(params[:id])    
    article.update(article_params)
    redirect_to article
  end

  def destroy
    article = Article.find(params[:id])    
    article.destroy
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :description)
  end

end
