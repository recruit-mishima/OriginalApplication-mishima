class RenameArticleidToComments < ActiveRecord::Migration
  def change
    rename_column :comments, :articleid, :article_id
  end
end
