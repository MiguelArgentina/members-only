class PostsController < ApplicationController

  #before_action :authenticate_member!, only: [:new, :create]

  def new
    @post = Post.new
  end

  def create
  end

  def index
  end
end
