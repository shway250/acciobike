class SessionsController < ApplicationController
  def signup
    @user = User.new

  end

  def newUser
    User.create()
    redirect_to root_path
  end

  def new
  end

  def create
    user = User.authenticate(user_params)

    if user
      session[:user_id] = user.id
      flash[:success] = "User logged in!!"
      redirect_to root_path
    else
      flash[:danger] = "Credentials Invalid!!"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "User logged out!!"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
