class Board
    attr_reader :squares 

    def initialize()
        @squares = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    end

    def valid_set(line, col)
        if(squares[line][col] == ' ')
            return true
        else
            return false
        end
    end

    def set_square(line, col, mark)
        @squares[line][col] = mark
    end

    def get_board
        for i in 0... 3 do
            for j in 0... 3 do
                print "#{squares[i][j]} "
                print "| " if j != 2
            end
            puts ""
            if i != 2
                3.times do
                    print "---" 
                end
            end
            puts ""
        end
    end

    def is_game_running
        if((squares[0][0] == 'X' && squares[0][1] == 'X' && squares[0][2] == 'X') || (squares[1][0] == 'X' && squares[1][1] == 'X' && squares[1][2] == 'X') || (squares[2][0] == 'X' && squares[2][1] == 'X' && squares[2][2] == 'X') || (squares[0][0] == 'X' && squares[1][0] == 'X' && squares[2][0] == 'X') || (squares[0][1] == 'X' && squares[1][1] == 'X' && squares[2][1] == 'X') || (squares[0][2] == 'X' && squares[1][2] == 'X' && squares[2][2] == 'X') || (squares[0][0] == 'X' && squares[1][1] == 'X' && squares[2][2] == 'X') || (squares[0][2] == 'X' && squares[1][1] == 'X' && squares[2][0] == 'X') || (squares[0][0] == 'O' && squares[0][1] == 'O' && squares[0][2] == 'O') || (squares[1][0] == 'O' && squares[1][1] == 'O' && squares[1][2] == 'O') || (squares[2][0] == 'O' && squares[2][1] == 'O' && squares[2][2] == 'O') || (squares[0][0] == 'O' && squares[1][0] == 'O' && squares[2][0] == 'O') || (squares[0][1] == 'O' && squares[1][1] == 'O' && squares[2][1] == 'O') || (squares[0][2] == 'O' && squares[1][2] == 'O' && squares[2][2] == 'O') || (squares[0][0] == 'O' && squares[1][1] == 'O' && squares[2][2] == 'O') || (squares[0][2] == 'O' && squares[1][1] == 'O' && squares[2][0] == 'O'))
            return false 
        else
            return true
        end
    end

    def find_winner
        if((squares[0][0] == 'X' && squares[0][1] == 'X' && squares[0][2] == 'X') || (squares[1][0] == 'X' && squares[1][1] == 'X' && squares[1][2] == 'X') || (squares[2][0] == 'X' && squares[2][1] == 'X' && squares[2][2] == 'X') || (squares[0][0] == 'X' && squares[1][0] == 'X' && squares[2][0] == 'X') || (squares[0][1] == 'X' && squares[1][1] == 'X' && squares[2][1] == 'X') || (squares[0][2] == 'X' && squares[1][2] == 'X' && squares[2][2] == 'X') || (squares[0][0] == 'X' && squares[1][1] == 'X' && squares[2][2] == 'X') || (squares[0][2] == 'X' && squares[1][1] == 'X' && squares[2][0] == 'X'))
            return 0
        elsif((squares[0][0] == 'O' && squares[0][1] == 'O' && squares[0][2] == 'O') || (squares[1][0] == 'O' && squares[1][1] == 'O' && squares[1][2] == 'O') || (squares[2][0] == 'O' && squares[2][1] == 'O' && squares[2][2] == 'O') || (squares[0][0] == 'O' && squares[1][0] == 'O' && squares[2][0] == 'O') || (squares[0][1] == 'O' && squares[1][1] == 'O' && squares[2][1] == 'O') || (squares[0][2] == 'O' && squares[1][2] == 'O' && squares[2][2] == 'O') || (squares[0][0] == 'O' && squares[1][1] == 'O' && squares[2][2] == 'O') || (squares[0][2] == 'O' && squares[1][1] == 'O' && squares[2][0] == 'O'))
            return 1
        end
    end
end