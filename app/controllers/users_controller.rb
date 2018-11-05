class UsersController < ApplicationController

  def index
    @users = User.all
    render "index.html.erb"
  end
  
  def show
    @user = User.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @user = User.new(
      name: params["name"],
      email: params["email"],
      password: params["password"],
      password_confirmation: params["password_confirmation"]
    )
    @user.save
    render "show.json.jbuilder"
  end

end
