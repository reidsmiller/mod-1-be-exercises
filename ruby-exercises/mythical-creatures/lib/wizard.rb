class Wizard
    attr_accessor :name, :bearded 

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @spells_cast = 0
    end

    def bearded?
        bearded
    end

    def incantation(spell)
        "sudo #{spell}"
    end

    def rested?
        return false if @spells_cast >= 3
        true
    end

    def cast
        @spells_cast += 1
        'MAGIC MISSILE!'
    end
end