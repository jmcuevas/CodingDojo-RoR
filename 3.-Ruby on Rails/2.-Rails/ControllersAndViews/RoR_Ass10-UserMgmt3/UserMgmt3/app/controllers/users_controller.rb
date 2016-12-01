class UsersController < ApplicationController
  def index
      @users = User.all
  end

  def new
  end

  def create
      user_params = params.require(:user).permit(:first_name, :last_name, :email)
      User.create(user_params)
      redirect_to '/'
  end

  def show
  end

  def edit
  end

  def delete
  end
end
