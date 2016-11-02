class Queue

    attr_accessor :data_store
    attr_reader :back, :max, :min

    def initialize
        @data_store = []
        @back = 0
        @max = 0
        @min = 0
    end

    def enqueue(val)
        @data_store[@data_store.length] =  val
        @back =+ 1
        set_max()
        set_min()
        self
    end

    def dequeue
        if @data_store.empty?
            nil
        elsif @data_store.length == 1
            @data_store.clear
            @back -= 1
        else
            for i in 1..(@data_store.length - 1)
                @data_store[i - 1] = data_store[i]
            end
            @data_store.delete_at(@data_store.length - 1)
            @back -= 1
        end
        set_max()
        set_min()
    end

    def set_max
        @max = @data_store.max
    end

    def set_min
        @min = @data_store.min
    end
end
