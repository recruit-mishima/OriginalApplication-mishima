class ArticlesController < 
  def index
    @article = Article.find()
  end
end

