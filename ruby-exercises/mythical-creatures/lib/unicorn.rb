class Unicorn
    attr_accessor :name, :color

    def initialize (name, color = 'silver')
        @name = name
        @color = color
    end

    def silver?
        self.color == 'silver'
    end

    def say (string)
        "**;* #{string} **;*"
    end
end