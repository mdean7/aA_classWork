class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if user
        login!(user)
        redirect_to user_url
    else
      flash.now[:errors] = ['invalid username or password']
      render :now
    end
  end

  def destroy
    logout!
    redirect_to user_url
  end

end
