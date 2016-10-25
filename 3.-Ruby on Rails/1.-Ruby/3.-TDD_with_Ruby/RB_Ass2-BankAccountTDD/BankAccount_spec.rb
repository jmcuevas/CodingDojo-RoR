# Include the BankAccount in the spec file
require_relative 'BankAccount'

RSpec.describe BankAccount do
    before do
        @act1 = BankAccount.new
    end

    it 'has a method for retreiving the checking account balance' do
        expect(@act1.get_checking).to eq(100)
    end

    it 'Has a method that retreives the total account balance' do
        expect(@act1.display_balance).to eq('Total money: $150')
    end

    it 'Has a method that allows the user to withdraw cash' do
        @act1.withdraw(10, "savings")
        expect(@act1.get_savings).to eq(40)
    end

    it 'Raises an error if a user tries to withdraw more money than they have in the account' do
        expect(@act1.withdraw(60, "savings")).to eq("Insuficient funds in savings account")
    end

    it 'Raises an error when the user tries to print out how many bank accounts there are' do
        expect{@act1.num_accounts}.to raise_error(NoMethodError)
    end

    it  'Raises an error when the user tries to set the interest rate' do
     expect{@act1.interest_rate = 0.20}.to raise_error(NoMethodError)
    end

    it 'Raises an error when the user tries to set an attribute' do
        expect{@act1.account_number = 5}.to raise_error(NoMethodError)
        expect{@act1.checking_balance = 5}.to raise_error(NoMethodError)
        expect{@act1.savings_balance = 5}.to raise_error(NoMethodError)
        expect{@act1.interest_rate = 5}.to raise_error(NoMethodError)
        expect{@act1.num_accounts = 5}.to raise_error(NoMethodError)
    end
end
