require_relative 'AppleTree'

RSpec.describe AppleTree do
    before do
        @tree = AppleTree.new
    end
    it "Apple Tree should have a height and age" do
        expect(@tree.get_height).to eq(0)
        expect(@tree.get_age).to eq(0)
    end
    it "Apple Tree should have a count of how many apples is on it" do
        expect(@tree.get_apples).to eq(0)
    end

    it "Apple Tree should have a method called year_gone_by, which ages the tree by 1 year affecting its height" do
        # 1st year (not grow)
        @tree.year_gone_by
        expect(@tree.get_age).to eq(1)
        expect(@tree.get_height).to eq(10)
        expect(@tree.get_apples).to eq(0)

        # 3rd year (not grow)
        2.times {@tree.year_gone_by}
        expect(@tree.get_age).to eq(3)
        expect(@tree.get_height).to eq(30)
        expect(@tree.get_apples).to eq(0)

        # 4th year
        1.times{@tree.year_gone_by}
        expect(@tree.get_age).to eq(4)
        expect(@tree.get_height).to eq(40)
        expect(@tree.get_apples).to eq(10)

        #11th year (decay & not grow)
        7.times{@tree.year_gone_by}
        expect(@tree.get_age).to eq(11)
        expect(@tree.get_height).to eq(110)
        expect(@tree.get_apples).to eq(70)

    end

    it "Apple Tree should have a method called pick_apples that takes all of the apples off the tree" do
        10.times {@tree.year_gone_by}
        expect(@tree.get_apples).to eq(70)
        @tree.pick_apples
        expect(@tree.get_apples).to eq(0)
    end
end
