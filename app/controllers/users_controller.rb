class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params) 
    if @user.save
      flash[:success] = "Thanks for signing up!!"
          redirect_to @user
    else
      render 'new' 
    end
  end

  def destroy
    User.find(params[:id]).destroy 
    flash[:success] = "User successfully deleted" 
    redirect_to users_url
  end

  private 
  
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
