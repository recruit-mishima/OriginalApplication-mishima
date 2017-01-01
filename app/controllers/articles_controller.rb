class ArticlesController < ApplicationController
  def index
    @article = Article.find()
  end
end