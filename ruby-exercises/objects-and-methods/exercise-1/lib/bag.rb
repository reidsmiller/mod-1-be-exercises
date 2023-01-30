class Bag
    attr_accessor :candies
    def initialize
        @candies = []
    end

    def empty? 
        if candies.length == 0
            true
        else
            false
        end
    end

    def count
        candies.length
    end

    def << (candy)
        self.candies << candy
    end

    def contains? (phrase)
        container = candies.any? do |candy|
            candy.type == (phrase)
        end
        return container
    end
end


