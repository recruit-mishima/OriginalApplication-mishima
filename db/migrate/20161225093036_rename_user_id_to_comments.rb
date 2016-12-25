class RenameUserIdToComments < ActiveRecord::Migration
  def change
    rename_column :comments, :user_id, :users_id
  end
end
