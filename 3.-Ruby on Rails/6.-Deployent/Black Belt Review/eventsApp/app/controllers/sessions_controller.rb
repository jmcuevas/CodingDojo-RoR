class SessionsController < ApplicationController
  def create
      user = User.find_by_email(params[:user][:email])
      if !user # Does not exists
          flash[:log_errors] = "Your user name or password is invalid"
          redirect_to '/'
      else # If user exists
          if user.authenticate(params[:user][:password]) # And password is correct
              session[:first_name] = user.first_name
              session[:user_id] = user.id
              redirect_to '/events'
          else # Password is incorrect
              flash[:log_errors] = "Your username or password is invalid"
          end
      end
  end

  def destroy
      reset_session
      redirect_to '/'
  end
end
