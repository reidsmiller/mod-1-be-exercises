class Direwolf
    attr_accessor :name, :home, :size, :starks_to_protect
    def initialize (name, home = 'Beyond the Wall', size = 'Massive')
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
    end

    def protects(stark)
        if self.home == stark.location && starks_to_protect.length < 2
            self.starks_to_protect << stark
            stark.safe = true
        end
    end

    def leaves(stark)
        starks_to_protect.delete(stark)
        stark.safe = false
        return stark
    end

    def hunts_white_walkers?
        if starks_to_protect == []
            true
        else
            false
        end
    end

end

class Stark
    attr_accessor :name, :location, :safe, :house_words
    def initialize (name, location = 'Winterfell')
        @name = name
        @location = location
        @safe = false
        @house_words = 'Winter is Coming'
    end

    def safe?
        safe
    end
end