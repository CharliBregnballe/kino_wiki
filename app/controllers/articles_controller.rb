class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  
  def index
    if params[:search].present?
      @articles = Article.search(params[:search])
    else
      @articles = []
    end
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to @article 
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @article.update_attributes(article_params)
      flash[:success] = "Article updated"
      redirect_to @article 
    else
      render :edit 
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private 

    def article_params
      params.require(:article).permit(:title, :body, :department_id, :user_id)
    end

    def set_article
      @article = Article.find(params[:id])
    end
end
