class Board
    def initialize()
        @squares = [['.', '.', '.'], ['.', '.', '.'], ['.', '.', '.']]
    end

    def setSquare(line, col, mark)
        @squares[line][col] = mark
    end
end