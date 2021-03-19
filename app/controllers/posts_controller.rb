class PostsController < ApplicationController

  #before_action :authenticate_member!, only: [:new, :create]

  def new
    @post = current_member.posts.build
  end

  def show
  end

  def create
    @post = current_member.posts.build(post_params)

    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
