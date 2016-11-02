class SLL

    attr_accessor :head

    def initialize
        @head = nil
    end

    # Inserts a new node in to after the node that has the value previousVal
    def insert(val, previousVal)
        node = SLLNode.new(val)
        current = @head
        while (current)
            if current.value == previousVal
                node.next = current.next
                current.next = node
                return
            end
            current = current.next
        end
    end

    # Method to get the values of tehe SLL
    def values
        arr = []
        current = @head
        while (current)
            arr.push(current.value)
            current = current.next
        end
        arr
    end

    def find

    end

    def remove

    end

    def display_nodes

    end

    def display_values

    end

    def add

    end

    def remove_all

    end

    def min

    end

    def max

    end

    def how_many

    end
end


class SLLNode
    attr_accessor :value, :next
    def initialize (val=nil)
        @value = val
        @next = nil
    end

end
