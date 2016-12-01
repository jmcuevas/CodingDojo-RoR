class NumbersController < ApplicationController
  def index
      session[:number]
      if session[:number] == nil
          session[:number] = rand(100)
      end

  end

  def try
      flash[:high_low] = nil
      flash[:high_low] = "high" if params[:guess].to_i > session[:number]
      flash[:high_low] = "low" if params[:guess].to_i < session[:number]
      flash[:high_low] = "right" if params[:guess].to_i == session[:number]

      puts flash[:high_low]
      @high_low = flash[:high_low]
      redirect_to '/'
  end

  def restart
      session[:number] = nil
      redirect_to '/'
  end
end
