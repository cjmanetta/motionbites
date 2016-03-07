class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      login(@user)
      redirect_to user_path(@user.id)
    else
      flash[:notice] = "your username or password is incorrect"
      redirect_to root_path
    end
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end