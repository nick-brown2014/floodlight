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
    reverse_rants = Post.all.reverse
    if reverse_rants.length > 9
      @recent_rants = reverse_rants
    else
      @recent_rants = reverse_rants[0,10]
    end
  end

  def new
  end

end