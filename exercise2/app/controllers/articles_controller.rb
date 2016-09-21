class ArticlesController < ApplicationController
before_action :set_author, except: []
before_action :set_artcle, except: [:index]
  def index
    render json: { articles: @author.articles.map { |e| e.to_builder.attributes! }}
  end

  def show
    render json: {article: article.to_builder.attributes!}
  end

  private
  def set_article
    @article ||= Article.find params[:id]
  end
  def set_author
    @author = Owner.find_by_name! params[:owner_name]
  end
end
