class ArticlesController < ApplicationController
  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def index
    @articles = Article.all
  end
 
  def show
  end
 
  def new
    @article = Article.new
  end
 
  def edit
  end
 
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end
 
  def update
    if @article.update(article_params)
      flash[:notice] = "Article was updated"
      redirect_to articles_path(@article)
    else
      flash[:notice] = "Article was not updated"
      render 'edit'
    end
  end
 
  def destroy
    @article.destroy
    flash[:notice] = "Article was deleted"
    redirect_to articles_path
  end
 
  private
    def article_params
      params.require(:article).permit(:title, :text, :description, :auth, :price)
    end         

    def set_article
      @article = Article.find(params[:id])
    end
end