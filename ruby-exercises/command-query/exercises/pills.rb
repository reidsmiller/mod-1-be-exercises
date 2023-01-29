class Pills
    attr_accessor :count
    def initialize
        @count = 60
    end

    def pop
        @count += -1
    end
end