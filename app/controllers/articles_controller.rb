class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new, notice: 'Failed to create'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    if @article.destroy
      redirect_to articles_path, notice: 'successfully deleted'
    else
      redirect_to articles_path, notice: 'failed to delete'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
