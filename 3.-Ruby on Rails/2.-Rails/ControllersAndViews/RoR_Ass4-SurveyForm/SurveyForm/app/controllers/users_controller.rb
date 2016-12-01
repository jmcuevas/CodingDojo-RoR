class UsersController < ApplicationController
  def new
  end

  def create
      User.create(name:params[:user][:name] , location:params[:user][:location] , languaje:params[:user][:languaje] , comment:params[:user][:comment] )
      flash[:submit_count]
      flash[:submit_count] += 1
  end
end
