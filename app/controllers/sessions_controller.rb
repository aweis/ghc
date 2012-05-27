class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid."
      render "new"
    end
  end

  #logging out
  def destroy
    session[:user_id] = nil
    
    # This resets the entire session, but Ryan Bates says setting
    # :user_id = nil would suffice
    # reset_session
    
    redirect_to root_url, notice: "Logged out!"
  end

end
