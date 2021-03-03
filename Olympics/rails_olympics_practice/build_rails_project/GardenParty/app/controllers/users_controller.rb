class UsersController < ApplicationController

  def new
    render :new
  end

  def create
    @user = User.new(params.require(:user).permit(:username))
    if @user.save
      redirect_to gardens_url
    else
      render :new
    end
  end
end
