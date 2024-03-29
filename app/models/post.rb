class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title

  validates :name, :presence => true
  validates :title, :length => { :minimum => 5 }

  has_many :comments
end
