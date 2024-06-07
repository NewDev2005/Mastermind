require 'colorize'
require_relative 'classes/game_board'
require_relative 'classes/computer'
require_relative 'classes/player'

board = GameBoard.new
computer = Computer.new
human_player = Player.new
board.display_board

valid_input = [:black,:red,:green,:yellow,:magenta,:cyan,:white,:blue]
count = 1
until count == 11
    
    if count == 1
        x = 0
        y = 4
    end

    for i in (x...y)
        human_player.colorChoice = gets.chomp.to_sym

        until valid_input.include?(human_player.colorChoice)
            puts "Sorry INVALID INPUT/COLOR".colorize(:red)
            human_player.colorChoice = gets.chomp.to_sym
        end

        board.pegs[i] = "\u25CF".colorize(human_player.colorChoice)
        human_player.pegsColor.push(human_player.colorChoice)
    end
    p human_player.pegsColor #for debug
    x = y 
    y += 4
    board.display_board
    break if computer.color == human_player.pegsColor
    human_player.del_pegs_color
    count += 1
end
 
