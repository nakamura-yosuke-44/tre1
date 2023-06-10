class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post
      redirect_to posts_path, success: 'ログインしました'
    end
  end

  def show
  end

  def edit
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end


end
