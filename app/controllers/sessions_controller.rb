class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      login(@user)
      redirect_to user_path(@user.id)
    else
      flash[:notice] = "your username or password is incorrect"
      redirect_to root_path
    end
  end
end