class Ferret
    attr_accessor :name

    def initialize (name = nil)
        @name = name
    end

    def give_name (string)
        @name = string
    end
end