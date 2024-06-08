require 'colorize'
require_relative 'classes/game_board'
require_relative 'classes/computer'
require_relative 'classes/player'

puts "WELCOME TO MASTERMIND"
puts "ENTER ONE COLOR AT A TIME"
puts "Make your guess based on these colors"
puts "red".colorize(:red),"blue".colorize(:blue),"black".colorize(:black),"green".colorize(:green),"yellow".colorize(:yellow), "magenta".colorize(:magenta),"cyan".colorize(:cyan),"white".colorize(:white)

board = GameBoard.new
computer = Computer.new
human_player = Player.new

computer.code_maker
board.display_board

valid_input = [:black,:red,:green,:yellow,:magenta,:cyan,:white,:blue]
count = 1
until count == 11
    
    if count == 1
        x = 0
        y = 4
        j = 0
    end

    for i in (x...y)
        human_player.colorChoice = gets.chomp.downcase.to_sym

        until valid_input.include?(human_player.colorChoice)
            puts "Sorry INVALID INPUT/COLOR".colorize(:red)
            human_player.colorChoice = gets.chomp.to_sym
        end

        board.pegs[i] = "\u25CF".colorize(human_player.colorChoice)
        human_player.pegsColor.push(human_player.colorChoice)
    end

    break puts "WOAH YOU WON!" if computer.colorCode == human_player.pegsColor
    

    human_player.pegsColor.each_with_index do |human_color, human_index|
        computer.colorCode.each_with_index do |comp_color,comp_index| 
            if human_color == comp_color && human_index == comp_index
               board.hintPegs[j] = "\u2547".colorize(:red)
               j += 1
            elsif human_color == comp_color && human_index != comp_index
                board.hintPegs[j] = "\u2547".colorize(:white)
                j += 1
            end
        end
    end
    
    p human_player.pegsColor #for debug
    j = y
    x = y 
    y += 4
    board.display_board
    human_player.del_pegs_color
    count += 1
end

puts p "This was computer's code #{computer.colorCode}"