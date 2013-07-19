class Post < ActiveRecord::Base
  attr_accessible :title, :content

  validates :title, :content, presence: true
end
