class SearcingController < ApplicationController
  def search
    @articles = Article.where("(keywords = ?) OR (keyword = ?) OR (keyword = ?), keyword1, keyword2, keyword3", "date:?..?, Year1, Year2").order('id ASC')
  end

  def create
    # Accounts.create(singup_parasms / signin_params)
    redirect_to controller: :welcomes, action: :create
  end
end

