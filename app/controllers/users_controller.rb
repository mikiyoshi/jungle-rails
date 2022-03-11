class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

private

  def user_params
    # Error only :name  =====>  :first_name, :last_name,
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end