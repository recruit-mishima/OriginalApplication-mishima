class ResultsController < ApplicationController
  def show
    @article = Article.where("(keywords = ?) OR (keyword = ?) OR (keyword = ?), keyword1, keyword2, keyword3", "date:?..?, Year1, Year2").order('id ASC')

end
