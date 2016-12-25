class RenameUseridToComments < ActiveRecord::Migration
  def change
    rename_column :comments, :userid, :user_id
  end
end
