class SessionsController < ApplicationController

def new
  render :new
end

def create
  user = User.find_by_credentials(
    params[:user][:email], 
    params[:user][:password]
  )

  if user
    login!(user)
    redirect_to user_url(user)
  else
    flash.now[:errors] = ['Invalid creds bruv! <3']
    render :new
  end

end

def destroy
 logout! if logged_in?
 redirect_to new_session_url
end

end
