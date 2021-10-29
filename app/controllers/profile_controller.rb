class ProfileController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = User.find(params[:user_id])
    @posts = @user.posts.availables
    @comments = @user.comments
  end
end
