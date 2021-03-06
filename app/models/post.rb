class Post < ActiveRecord::Base
  attr_accessible :title, :content

  validates :title, :content, presence: true
  belongs_to :user

  def authored_by?(author)
    user == author
  end
end
