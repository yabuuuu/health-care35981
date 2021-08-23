class ArticlesController < ApplicationController

  def index
    @articles = Article.includes(:user).order("created_at DESC")
  end

  def search
    @articles = Article.search(params[:keyword])
  end
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def article_params
    params.require(:article).permit( :image, :article, :text, :improvement).merge(user_id: current_user.id)
  end
end
