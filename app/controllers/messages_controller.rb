class MessagesController < ApplicationController

  def create
    @message = Message.new(author: params[:message][:author], text: params[:message][:text])
    if @message.author.length == 0
      @message.update(author: "Anonymous")
    end
    @message.save
    redirect_to root_path
  end

  def new
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to users_path
  end

end