class Werewolf
    attr_accessor :name, :location, :human, :wolf, :hungry, :victims
    def initialize (name, location = nil)
        @name = name
        @location = location
        @human = true
        @wolf = false
        @hungry = false
        @victims = 0
    end

    def human?
        human
    end

    def wolf?
        wolf
    end

    def change!
        if human == true
            self.human = false
            self.wolf = true
            self.hungry = true
        else
            self.human = true
            self.wolf = false
            self.hungry = false
        end
    end

    def consume(person)
        if self.human == true
            return nil
        else
            self.victims += 1
            self.hungry = false
            person.status = :dead
        end
    end
end
