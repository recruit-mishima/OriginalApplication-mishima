class RenameCommentsToFavourites < ActiveRecord::Migration
  def change
    rename_table :comments, :favourites
  end
end