class CreateComments < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer      :user_id
      t.integer      :article_id
      t.text         :comment
      t.timestamps
    end
  end
end
