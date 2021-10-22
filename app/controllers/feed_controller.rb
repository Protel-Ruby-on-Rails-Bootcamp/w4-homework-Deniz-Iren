class FeedController < ApplicationController
  def index
		@posts = Post.where("user_id IN (?)", current_user.following_ids).availables.order(created_at: :desc)
	end
end
