class Dragon
    attr_accessor :name, :color, :rider, :times_eaten

    def initialize (name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @times_eaten = 0
    end

    def eat
        self.times_eaten += 1
    end

    def hungry?
        if times_eaten < 3
            true
        else
            false
        end
    end
end
