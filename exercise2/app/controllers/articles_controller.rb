class ArticlesController < ApplicationController
before_action :set_author, except: [], if: :params_check
before_action :set_article, except: [:index]
  def index
    render json: { articles: @author.articles.map { |e| e.to_builder.attributes! }}
  end

  def show
    render json: {article: @article.to_builder.attributes!}
  end

  private
  def set_article
    if @author
      @article ||= @author.articles.find params[:id]
    else
      @article ||= Article.find params[:id]

    end
  end
  def set_author
    @author = Owner.find_by_name! params[:owner_name]
  end

  def params_check
    params.include? :owner_name
  end
end
