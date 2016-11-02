require_relative 'stack'

RSpec.describe Stack do
    before do
        @stack = Stack.new
    end

    it "Has an attribute, data_store, which displays an array of the values in the Stack" do
        expect(@stack.data_store).to eq([])
    end

    it "Has an attribute, back, which displays the last value in the Stack. Should be 0 by default and a user should not be able to set the back attribute" do
        # When the data_store is empty
        expect(@stack.back).to eq(0)

        # Add values to data_store
        @stack.push_method(1)
        @stack.push_method(2)
        @stack.push_method(3)

        # When data store has values
        expect(@stack.back).to eq(3)
    end

    it "Has a push method which adds a new value to the end of the Stack" do
        # Add values to data_store
        @stack.push_method(1)
        @stack.push_method(2)
        @stack.push_method(3)

        expect(@stack.data_store).to eq([1,2,3])
    end

    it "Has a pop method which removes the last value of the Stack, should return nil if there is nothing to pop" do
        # Add values to data_store
        @stack.push_method(1)
        @stack.push_method(2)
        @stack.push_method(3)

        @stack.pop_method

        expect(@stack.data_store).to eq([1,2])
    end
end
