class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string      :title 
      t.string      :text
      t.datetime    :date
      t.text        :abstract
      t.timestamps
    end
  end
end
