class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    
    if @user.save
      # Registration Email
      UserMailer.registration_confirmation(@user).deliver
      
      #if you signup, you should start your session
      cookies[:auth_token] = @user.auth_token 
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
  end
end
