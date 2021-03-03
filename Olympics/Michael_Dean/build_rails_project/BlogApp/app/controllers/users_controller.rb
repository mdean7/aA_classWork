class UsersController < ApplicationController

  
  def show
    @user = User.find(params[:id])
    render :show
  end

  def create
    @user = User.new(params.require(:user).permit(:email))
      if @user.save
        redirect_to blogs_url
      else
        render :new
      end
  end


end
