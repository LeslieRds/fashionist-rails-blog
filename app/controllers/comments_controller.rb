class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @post = Post.find(params[:post_id])
    @comment.post = @post
    if @comment.save
      flash[:notice] = "Comment successfully created"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Comment not created"
      render "posts/show"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post_id
    if @comment.destroy
      flash[:notice] = "Comment successfully deleted"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Comment not deleted"
      render "posts/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
