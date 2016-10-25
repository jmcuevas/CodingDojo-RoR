class BankAccount

    @@num_accounts = 0

  def initialize
      @account_number = create_account()
      @checking_balance = 100
      @savings_balance = 50
      @interest_rate = 0.015
      @@num_accounts += 1
  end

  def display_account
    puts account_number
  end

  def get_checking
    @checking_balance
  end

  def get_savings
    @savings_balance
  end

  def deposit (amount, account)
    @savings_balance += amount if account == "savings"
    @checking_balance += amount if account == "checking"
    self
  end

  def withdrawl (amount, account)
    @savings_balance -= amount if account == "savings" && @savings_balance >= amount
    @checking_balance -= amount if account == "checking" && @checking_balance >= amount
    self
  end

  def display_balance
    puts "Total money: $#{@checking_balance + @savings_balance}"
  end

  def num_of_accounts
      @@num_accounts
  end

  def account_information
      puts "User account number: #{@account_number}"
      display_balance()
      puts "Checking account balance: $#{@checking_balance}"
      puts "Savings account balance: $#{@savings_balance}"
      puts "Interest rate: #{@interest_rate}%"
  end

  private
  def create_account
    acct = ""
    10.times {acct += rand(9).to_s}
    acct
  end
end

ba1 = BankAccount.new
ba1.account_information
