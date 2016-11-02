require_relative 'queue'

RSpec.describe Queue do
    before do
        @q1 = Queue.new
    end

    it "Has an attribute, data_store, which displays an array of the values in the Queue" do
        expect(@q1.data_store).to eq([])
    end

    it "Has an attribute, back, which displays the last value in the Queue. Should be 0 by default and a user should not be able to set the back attribute" do
        expect(@q1.back).to eq(0)
    end

    it "Has a enqueue method which adds a new value to the end of the Queue" do
        @q1.enqueue(1)
        @q1.enqueue(2)
        @q1.enqueue(3)

        expect(@q1.data_store).to eq([1,2,3])
    end

    it "Has a dequeue method which removes the first value of the Queue, should return nil if there is nothing to dequeue" do
        @q1.enqueue(1)
        @q1.enqueue(2)
        @q1.enqueue(3)

        @q1.dequeue

        expect(@q1.data_store).to eq([2,3])
    end

    it "Has an attribute called max and another called min which track what the max and minimum of the Queue" do
        @q1.enqueue(1)
        @q1.enqueue(2)
        @q1.enqueue(3)

        expect(@q1.min).to eq(1)
        expect(@q1.max).to eq(3)
    end
end
