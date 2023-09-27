class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @comments = @post.comments.order(created_at: :desc)
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      flash[:notice] = "Post successfully created"
      redirect_to posts_path
    else
      flash[:alert] = "Post not created"
      render :new
    end
  end

  def destroy
    if @post.destroy
      flash[:notice] = "Post successfully deleted"
      redirect_to posts_path
    else
      flash[:alert] = "Post not deleted"
      render :show
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :url)
  end
end
