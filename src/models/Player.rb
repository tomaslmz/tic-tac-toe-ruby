class Player
    attr_reader :name
    
    def initialize(name, number)
        @name = name
        @mark = number == 1 ? 'X' : 'O'
    end
end