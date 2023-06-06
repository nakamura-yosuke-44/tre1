class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
  end

  def show
  end

  def edit
  end
end
