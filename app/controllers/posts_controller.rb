class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    Post.create post_params
  end

  def index
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
