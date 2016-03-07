class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      flash[:notice] = "there was something wrong with your submission"
    end

  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :birthdate, :password_digest, :days_of_7_vig, :mins_vig_per_day, :days_of_7_mod, :mins_mod_per_day, :days_of_7_walk, :mins_walk_per_day, :mins_weekday_sitting, :org_pa)
  end


end