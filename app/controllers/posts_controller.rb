class PostsController < ApplicationController
  require 'pry'

  def show
  end

  def create
    @params = params[:post]
    binding.pry
    @post = Post.new(title: @params[:title], text: @params[:text])
    if @post.save
      redirect_to post_path(@post.id)
    else
      redirect_to user_path(1)
    end
  end

  def destroy
  end

  def edit
  end

  def index
  end

  def new
  end

end