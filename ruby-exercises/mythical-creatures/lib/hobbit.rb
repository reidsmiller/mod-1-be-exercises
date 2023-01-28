class Hobbit
    attr_accessor :name, :disposition, :age, :height

    def initialize (name, disposition = 'homebody')
        @name = name
        @disposition = disposition
        @age = 0
        @height = 'short'
    end

    def celebrate_birthday
        self.age = self.age += 1
    end

    def adult?
        if age < 33
            false
        else
            true
        end
    end

    def old?
        if age < 101
            false
        else
            true
        end
    end

    def has_ring?
        if name == "Frodo"
            true
        else
            false
        end
    end

    def is_short?
        if height == 'short'
            true
        else
            false
        end
    end
end