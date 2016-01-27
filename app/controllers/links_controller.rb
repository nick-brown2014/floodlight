class LinksController < ApplicationController

  def create
    @post = Post.last
    @link = Link.new(post_id: @post.id, address: params[:link][:address])
    @link.save
    if params[:done] == "Done"
      redirect_to post_path(@post.id)
    else
      redirect_to new_link_path
    end
  end

  def new
  end

end