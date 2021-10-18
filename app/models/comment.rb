class Comment < ApplicationRecord
  validates :title, :content, presence: true

  belongs_to :post
  belongs_to :user, optional: true

  scope :accepted, -> {where(accepted: true)}

  def commenter
    if self.user 
      user.email
    else
      'Unknown User'
    end
  end 

  def status
    if accepted
      'Public'
    else
      'Private'
    end
  end

  def accepted_default
    self.accepted = false
  end  
end
