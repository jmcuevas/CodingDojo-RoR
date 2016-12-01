class SayController < ApplicationController
  def hello
    render text: "Hello Coding Dojo"
  end

  def say_hello
    render text: "Saying Hello!"
  end

  def say_hello_joe
    render text: "Saying Hello Joe!"
  end

  def say_hello_michael
    redirect_to "/say/hello/joe"
  end

  def index
    render text: "What do you want me to say???"
  end

  def how_many_visits
    if session[:visits]
      session[:visits] += 1
    else
      session[:visits] = 1
    end
    render text: "You've visited this url #{session[:visits]} times"
  end

  def reset_visits
    session[:visits] = nil
    render text: "Destroyed the session"
  end
end
