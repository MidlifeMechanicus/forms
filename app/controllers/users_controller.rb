class UsersController < ApplicationController
  # Instructed to create empty methods.
  def create
    # @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
