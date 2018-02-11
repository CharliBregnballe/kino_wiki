class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  
  def index
    @top10 = Article.all.popular_articles
    @top_contribuers = User.all.sort{|a,b| b.articles.count <=> a.articles.count }

    if params[:search].present?
      @articles = Article.search(params[:search])
      @incidents = []
    else
      @articles = []
      @incidents = Incident.all
    end
  end

  def show
    impressionist(@article, nil, {:unique => [:session_hash]})
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
      params.require(:article).permit(:title, :body, :department_id, :user_id, :impressions_count)
    end

    def set_article
      @article = Article.friendly.find(params[:id])
    end
end
