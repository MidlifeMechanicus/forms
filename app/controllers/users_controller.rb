class UsersController < ApplicationController
  # Instructed to create empty methods.
  def create
    @user = User.new(username: params[:username], email: params[:email], password: params[:password])

    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprecessable_entity
    end
  end

  def new
  end
end
