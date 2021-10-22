class WelcomeController < ApplicationController
  def index
    @posts = Post.all.availables.order(created_at: :desc)
  end
end
