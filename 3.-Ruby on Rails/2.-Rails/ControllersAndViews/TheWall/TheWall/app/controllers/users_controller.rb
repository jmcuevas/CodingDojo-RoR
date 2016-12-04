class UsersController < ApplicationController
  before_action :require_login, except: [:index, :register, :login]

  def index
  end

  def register
      user = User.new( user_params )
      if user.valid?
          user.save
          session[:first_name] = user.first_name
          session[:user_id] = user.id
          redirect_to "/wall"
      else
          flash[:reg_errors] = user.errors.full_messages
          redirect_to "/"
      end
  end

  def login
      #see if the email exists
      user = User.find_by_email(params[:email])
      #if it doesnt exists then redirect
      if !user
          flash[:log_errors] = "Your user name or password is invalid"
          redirect_to "/"
      #if it exists, check the password
      else
          #if the passwords match, redirect to the wall
          if user.authenticate(params[:password])
              session[:first_name] = user.first_name
              session[:user_id] = user.id
              redirect_to "/wall"
          #if the passwords don't match, redirect_to
          else
              flash[:log_errors] = "Your username or password is invalid"
          end
      end
  end

  def wall
      @messages = Message.all
  end

  def logout
      reset_session
      redirect_to '/'
  end

  private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
