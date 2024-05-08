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
    @article = Article.new(title: "...", body: "...", slug: "...")

    if @article.save 
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end


  # Using a private method to encapsulate the permissible parameters
  # is just a good pattern since you'll be able to reuse the same
  # permit list between create and update. Also, you can specialize
  # this method with per-user checking of permissible attributes.
  # https://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  private
  def article_params
    params.require(:article).permit(:title, :slug, :body)
  end
end
