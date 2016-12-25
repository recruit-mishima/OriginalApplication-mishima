class Article < ActiveRecord::Base
  has_many :commments
  has_many :users, :through => :comments
end
