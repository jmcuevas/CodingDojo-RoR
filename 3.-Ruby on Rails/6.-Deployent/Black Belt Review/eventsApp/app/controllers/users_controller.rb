class UsersController < ApplicationController
  def index
      if logged_in_user
          redirect_to '/events'
      end
  end

  def create
      user = User.new( user_params )
      if user.valid?
          user.save
          session[:first_name] = user.first_name
          session[:user_id] = user.id
          redirect_to '/events'
      else
          flash[:reg_errors] = user.errors.full_messages
          redirect_to '/'
      end
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
      user = User.find(params[:id])
      user.update( update_user_params )
      redirect_to '/events'
  end

  def destroy
      user = User.find(params[:id])
      user.destroy
      reset_session
      redirect_to '/'
  end

  private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password, :password_confirmation)
  end

  def update_user_params
      params.require(:user).permit(:first_name, :last_name, :email, :city, :state)
  end
end
