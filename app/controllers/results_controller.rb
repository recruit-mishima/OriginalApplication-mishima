class ResultsController < ApplicationController
  def index
    @article = Article.where("(keywords = ?) OR (keyword = ?) OR (keyword = ?), keyword1, keyword2, keyword3", "date:?..?, Year1, Year2").order('id ASC')
  end

  def create
    Favourite.create(favourite_params)
  end
  private
  def favourite_params
      params.permit(:text)
  end

  def show 
    @article = Article.where()

end
