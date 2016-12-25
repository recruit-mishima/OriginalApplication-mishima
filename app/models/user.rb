class User < ActiveRecord::Base
  has_many :commments
  has_many :articles, :through => :comments
end
