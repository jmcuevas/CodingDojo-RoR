class RpgController < ApplicationController
  def index
      if session[:gold] == nil
          session[:gold] = 0
      end
      if session[:activity_log] == nil
          session[:activity_log] = Array.new
      end
  end

  def farm
      trade_gold(10..20, "earn", "farm")
      redirect_to '/'
  end

  def cave
      trade_gold(5..10, "earn", "cave")
      redirect_to '/'
  end

  def house
      trade_gold(2..5, "earn", "house")
      redirect_to '/'
  end

  def casino
      trade_gold(0..50, "earn/take", "casino")
      redirect_to '/'
  end

  def trade_gold(range, earn_takes, from)
      # generate random amount of gold
      gold_amount = rand(range)
      log_text = ""

      if earn_takes == "earn"
          session[:gold] += gold_amount
          log_text = "Earned #{gold_amount} golds from the #{from}! #{Time.now}"
      end
      if earn_takes == "earn/take"
          x = rand(0..1)
          if x == 0
              session[:gold] += gold_amount
              log_text = "Earned #{gold_amount} golds from the #{from}! #{Time.now}"
          elsif x == 1
              session[:gold] -= gold_amount
              log_text = "Entered a #{from} and lost #{gold_amount} golds... Ouch. #{Time.now}"
          end
      end
      session[:activity_log].push(log_text)
  end
end
