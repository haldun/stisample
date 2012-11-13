class PostsController < ApplicationController
  respond_to :html, :json

  expose(:post_type) { params[:type].constantize }
  expose(:posts) { post_type.scoped }
  expose(:post) do
    if id = params[:id]
      posts.find id
    else
      post_type.new params[post_type.name.downcase.to_sym]
    end
  end

  def index
    respond_with posts
  end

  def new
  end

  def edit
  end

  def show
    respond_with post
  end

  def create
    if post.save
    end
    respond_with post
  end

  def update
    if post.save
    end
    respond_with post
  end

  def destroy
    post.destroy
    respond_with post
  end
end
