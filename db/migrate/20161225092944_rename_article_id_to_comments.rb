class RenameArticleIdToComments < ActiveRecord::Migration
  def change
    rename_column :comments, :article_id, :articles_id
  end
end
