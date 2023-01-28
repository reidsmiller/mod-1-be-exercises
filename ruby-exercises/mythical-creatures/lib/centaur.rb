class Centaur
    attr_accessor :name, :breed, :standing, :actions, :laying
    def initialize (name, breed)
        @name = name
        @breed = breed
        @actions = 0
        @standing = true
        @laying = false
    end

    def shoot
        if actions < 3 && standing == true
            self.actions += 1
            "Twang!!!"
        else
            "NO!"
        end
    end

    def run
        if standing == true
            self.actions += 1
            "Clop clop clop clop!"
        else
            'NO!'
        end
    end

    def cranky?
        if actions >= 3
            @cranky = true
        else
            @cranky = false
        end
    end

    def standing?
        standing
    end

    def laying?
        laying
    end

    def sleep
        if standing == true
            'NO!'
        else
            self.actions = 0
        end
    end

    def lay_down
        self.standing = false
        self.laying = true
    end

    def stand_up
        self.standing = true
        self.laying = false
    end

    def drink_potion
        if self.standing == false
            'NO!'
        elsif self.actions == 0
            'BLAAAAAAAAARGH'
        else
            self.actions = 0
        end
    end
end