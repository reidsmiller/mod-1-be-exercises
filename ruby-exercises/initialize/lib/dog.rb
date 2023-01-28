class Dog
    attr_reader :name, :type, :greeting

    def initialize (name, type)
        @name = name
        @type = type
        @greeting = "Woof, I'm #{name} the #{type}!"
    end
end