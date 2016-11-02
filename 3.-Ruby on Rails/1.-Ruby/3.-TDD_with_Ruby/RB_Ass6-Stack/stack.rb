class Stack

    attr_accessor :data_store, :back

    def initialize
        @data_store = []
    end

    def push_method(val)
        @data_store[@data_store.length] =  val
        self
    end

    def pop_method
        if @data_store.empty? == false
            @data_store.delete_at(@data_store.length - 1)
        else
            nil
        end
    end

    def back
        if @data_store.empty?
            0
        else
            @data_store[@data_store.length - 1]
        end
    end
end
