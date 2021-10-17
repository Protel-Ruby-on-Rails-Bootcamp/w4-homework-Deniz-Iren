class Post < ApplicationRecord
	validates :title, :content, presence: true

	has_many :comments
	belongs_to :user

	scope :availables, -> {where(visible: true)}
end
