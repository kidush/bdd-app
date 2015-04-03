class PostsController < ApplicationController
  before_filter :find_model

  def index
    @posts = Post.all
  end

  private
  def find_model
    @post = Posts.find(params[:id]) if params[:id]
  end
end