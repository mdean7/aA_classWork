class UsersController < ApplicationController

  def new
    render :new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to user_url(@user.id)
      login!(@user)
    else
      render :new
      flash.now[:errors] = @user.errors.full_messages
    end

  end

  private
  def user_params
    params.require(:user).permit(:username, :age, :email, :password)
  end

end
