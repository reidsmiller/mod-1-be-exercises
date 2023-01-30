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

    def grab(phrase)
        grabbag = self.candies.find do |candy|
            candy.type == (phrase)
        end
        self.candies.each do |candy|
            if candy.type == (phrase)
                candies.delete(candy)
                break
            end
        end
        return grabbag
    end

    def take (num)
        takebag = []
        num.times do takebag << candies.pop
        end
        if takebag.size == 1
            return takebag[0]
        else
            return takebag
        end
    end
end