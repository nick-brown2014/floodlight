class PostsController < ApplicationController
  require 'pry'

  def show
    @post = Post.find(params[:id])
  end

  def create
    @params = params[:post]
    @post = Post.new(title: @params[:title], text: @params[:text], blurb: @params[:blurb])
    if @post.save
      redirect_to post_path(@post.id)
    else
      redirect_to users_path
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to users_path
  end

  def edit
  end

  def index
  end

  def new
  end

end