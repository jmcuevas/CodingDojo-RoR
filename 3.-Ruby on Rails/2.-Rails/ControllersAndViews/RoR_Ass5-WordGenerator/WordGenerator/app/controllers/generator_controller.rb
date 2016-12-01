class GeneratorController < ApplicationController
  def generate
      session[:attempts]
      @random_word = ""
     14.times{@random_word  << (65 + rand(25)).chr}
     if session[:attempts] == nil
         session[:attempts] =1
     else
         session[:attempts] += 1
    end
  end
end
