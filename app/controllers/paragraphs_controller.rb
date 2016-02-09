class ParagraphsController < ApplicationController

  def create
    @post = Post.last
    @paragraph = Paragraph.new(post_id: @post.id, text: params[:paragraph][:text])
    @paragraph.save if @paragraph.text != ""
    if params[:done] == "Done"
      redirect_to new_link_path
    else
      redirect_to new_paragraph_path
    end
  end

  def new
  end

end