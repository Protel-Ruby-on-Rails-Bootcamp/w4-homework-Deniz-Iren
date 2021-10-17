class CommentsController < ApplicationController


  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    @comment.update(user: current_user)

    redirect_to @post
  end

  # def accept
  #   @comment = Comment.find(params[:id])
  #   @comment.update!(accept: true)
  # end

  private

  def comment_params
    params.require(:comment).permit(:title, :content)
  end
end
