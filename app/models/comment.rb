class Comment < ApplicationRecord
  validates :title, :content, presence: true

  belongs_to :post
  belongs_to :user, optional: true

  def commenter
    if self.user 
      user.email
    else
      'Unknown User'
    end

  end 
end
