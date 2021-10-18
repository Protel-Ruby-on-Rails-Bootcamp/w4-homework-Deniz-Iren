class ProfileController < ApplicationController

  def profile
    @user = User.find(params[:user_id])
    @posts = @user.posts.availables
  end
end
