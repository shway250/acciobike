class UserController < ApplicationController
  def create
    User.create(user_params)
    redirect_to users_path
  end

  def destroy
  end

  def edit
  end

  def index
  end

  def new
    @users = User.new
  end

  def show
  end

  def update
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
