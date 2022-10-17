class UsersController < ApplicationController

  def index 
    @users = User.all 
  end
  
  def show 
    #@user.events = User.events 
  end

  def new 
    @user = User.new 
  end 

  def create 
    @user = User.new(user_params)

    if @user.save 
      session[:user_id] = user_id 
      redirect_to root_path
    else 
      redirect_to sign_up_path
    end 
  end

  private 

  def user_params 
    params.require(:user).permit(:email, :password)
  end
end

