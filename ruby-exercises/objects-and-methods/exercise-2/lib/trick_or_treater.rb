class TrickOrTreater
    attr_accessor :dressed_up_as, :bag
    def initialize (dressed_up_as)
        @dressed_up_as = dressed_up_as.style
        @bag = Bag.new
    end

    def has_candy?
        if self.bag.count == 0
            false
        else
            true
        end
    end

    def candy_count
        self.bag.count
    end

    def eat
        self.bag.candies.pop
    end
end