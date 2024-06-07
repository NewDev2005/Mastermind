require_relative 'classes/game_board'

board = GameBoard.new
board.display_board
count = 1
until count == 11
    
    if count == 1
        x = 0
        y = 4
    end

    for i in (x...y)
        user_input = gets.chomp.to_sym
        board.pegs[i] = "\u25CF".colorize(user_input)
    end
    x = y 
    y += 4
    board.display_board
    count += 1
end
 
