require_relative 'wizard'

RSpec.describe Wizard do

    before do
        @wiz1 = Wizard.new
    end

    it 'Has a default health of 50 and intelligence of 25' do
        expect(@wiz1.health).to eq(50)
        expect(@wiz1.intelligence).to eq(25)
    end

    it 'Has a heal method that increases health by 10' do
        @wiz1.heal
        expect(@wiz1.health).to eq(60)
    end

    it 'Has an ancestor chain that includes "Human"' do
        expect(@wiz1.class.ancestors.include? (Human)).to eq(true)
    end

    it 'Has a fireball method that attacks an object and redces the object\'s health' do
        @wiz2 = Wizard.new
        @wiz1.fireball(@wiz2)
        expect(@wiz2.health).to eq(30)
    end

end
