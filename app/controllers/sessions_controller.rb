class SessionsController < ApplicationController


  def create
    @user = User.authenticate(params[:email], params[:password], params[:username])
    if @user
      flash[:notice] = "You have signed in"
      session[:user_id] = @user.user_id
      redirect_to "/"
    else  
      flash[:alert] = "There was a problem signing in, please try again"
      redirect_to signin_path
    end  
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Signed Out"
    redirect_to "/"
  end
  
end