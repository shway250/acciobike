class UserController < ApplicationController

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to user_path
  end

  def destroy
  end

  def edit
  end

  def index

  end

  def show
    @user = User.find(params[:id]) #This works!
  end

  def update
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
