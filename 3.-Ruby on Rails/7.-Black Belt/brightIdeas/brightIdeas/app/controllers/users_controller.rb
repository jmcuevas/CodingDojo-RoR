class UsersController < ApplicationController

  before_action :require_login, only:[:show]

  def show
      @user = User.find(params[:id])
  end

  def create
      user = User.new( user_params )
      if user.valid?
          user.save
          session[:alias] = user.alias
          session[:user_id] = user.id
          redirect_to '/bright_ideas'
      else
          flash[:reg_errors] = user.errors.full_messages
          redirect_to '/'
      end
  end


  private
  def user_params
      params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
  end
end
