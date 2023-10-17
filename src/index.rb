require_relative 'models/Player'
require_relative 'models/Board'

$players = Array.new(2)
$turn = 0
$mark = ['X', 'O']

def introduce
    puts "Hello! There is a tic-tac-toe created using Ruby to improve my studies."
    puts "To start, let's start naming the players (player 1 and 2)"

    puts "Type your name, Player 1:"
    name = gets.chomp

    

    $players[0] = Player.new(name)

    puts "Now, type your name, Player 2:"
    name = gets.chomp
    
    $players[1] = Player.new(name)
end

def start_game
    game = Board.new()

    while game.is_game_running() do
        puts "It's #{$players[$turn].name}'s turn"

        line = -1
        col = -1
        valid = false

        until valid do
            until line > 0 && line < 4 do
                puts "Type the line do you want to set your mark (#{$mark[$turn]}):"
                line = gets.chomp.to_i
                puts "You should type a valid number (0 - 3)" unless line > 0 && line < 4
            end
    
    
            until col > 0 && col < 4 do
                puts "Type the column do you want to set your mark (#{$mark[$turn]})"
                col = gets.chomp.to_i
                puts "You should type a valid number (0 - 3)" unless line > 0 && line < 4
            end

            valid = game.valid_set(line-1, col-1)

            unless game.valid_set(line-1, col-1)
                puts "Try again, you can't play in this line and column" 
                col = -1
                line = -1
            end
        end

        game.set_square(line-1, col-1, $mark[$turn])

        $turn = ($turn + 1) % 2

        game.get_board()

        line = -1
        col = -1
        valid = false;
    end

end

introduce()
start_game()