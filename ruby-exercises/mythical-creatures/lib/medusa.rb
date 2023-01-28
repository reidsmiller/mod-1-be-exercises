class Medusa
    attr_accessor :name, :statues, :count
    def initialize (name)
        @name = name
        @statues = []
        @count = 0
    end

    def stare(person)
        self.statues << person
        self.count += 1
        person.stone = true
        if statues.length >= 4
            self.statues[0].stone = false
            self.statues.shift
        end
    end

end

class Person
    attr_accessor :name, :stone
    def initialize (name)
        @name = name
        @stone = false
    end

    def stoned?
        stone
    end

end 