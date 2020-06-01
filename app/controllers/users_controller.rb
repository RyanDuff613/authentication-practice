class UsersController < ApplicationController

  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Sign up succesful"
      session[:user_id] = @user.user_id
      redirect_to "/"
    else  
      flash[:alert] = "Errors encountered when signing up"
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :username, :password_confirmation)
  end

end