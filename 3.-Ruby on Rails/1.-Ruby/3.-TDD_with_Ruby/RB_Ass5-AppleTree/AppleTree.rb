class AppleTree

    # attr_accessor :height, :age, :apples

    def initialize
        @height = 0
        @age = 0
        @apples = 0
    end

    def year_gone_by
        @age += 1
        @height += 10
        if @age > 3 && @age <= 10
            @apples += 10
        end
    end

    def pick_apples
        picked_apples = @apples
        @apples = 0
        picked_apples
    end

    def get_height
        @height
    end

    def get_age
        @age
    end

    def get_apples
        @apples
    end
end
