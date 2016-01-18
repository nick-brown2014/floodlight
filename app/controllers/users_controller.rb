class UsersController < ApplicationController

  def show
  end

  def index
    if User.find(1)[:name] != "true"
      redirect_to root_path
    end
  end

  def new
    User.find(1).update(name: "admin")
  end

  def create
    @password = params[:user][:password]
    @username = params[:user][:username]

    if @password == "strokin" && @username == "elfoolio"
      User.find(1).update(name: "true")
      redirect_to users_path
    else
      redirect_to root_path
    end
  end

end