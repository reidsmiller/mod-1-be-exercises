class Ogre
    attr_accessor :name, :home, :encounter_counter, :swings
    def initialize (name, home = 'Swamp')
        @name = name
        @home = home
        @encounter_counter = 0
        @swings = 0
    end

    def encounter(human)
        self.encounter_counter += 1
        human.encounter_counter += 1
        self.swings += 1 if human.notices_ogre? == true
        human.knocked_out = true if swings % 2 == 0
    end

    def swing_at(human)
        self.swings += 1
    end

    def apologize(human)
        human.knocked_out = false
    end
end

class Human
    attr_accessor :name, :knocked_out, :encounter_counter
    def initialize (name = 'Jane')
        @name = name
        @knocked_out = false
        @encounter_counter = 0
    end

    def notices_ogre?
        if self.encounter_counter % 3 != 0
            false
        else
            true
        end
    end

    def knocked_out?
        knocked_out
    end
end