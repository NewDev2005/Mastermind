require 'colorize'
require_relative 'classes/game_board'
require_relative 'classes/computer'
require_relative 'classes/player'

board = GameBoard.new
computer = Computer.new
human_player = Player.new

puts "enter 0 if you wish to be the Code_Breaker or 1 if you wish to be the Code_Maker "
user_input = gets.chomp.to_i

if user_input == 0
puts "WELCOME TO MASTERMIND"
puts "ENTER ONE COLOR AT A TIME"
puts "Make your guess based on these colors"
puts "red".colorize(:red),"blue".colorize(:blue),"black".colorize(:black),"green".colorize(:green),"yellow".colorize(:yellow), "magenta".colorize(:magenta),"cyan".colorize(:cyan),"white".colorize(:white)


computer.code_maker
board.display_board

placeholder = computer.colorCode.clone
valid_input = [:black,:red,:green,:yellow,:magenta,:cyan,:white,:blue]
count = 1
until count == 11
    
    if count == 1
        x = 0
        y = 4
        j = 0
    end

    for i in (x...y)       #players input
        human_player.colorChoice = gets.chomp.downcase.to_sym 

        until valid_input.include?(human_player.colorChoice)
            puts "Sorry INVALID INPUT/COLOR".colorize(:red)
            human_player.colorChoice = gets.chomp.to_sym
        end

        board.pegs[i] = "\u25CF".colorize(human_player.colorChoice)
        human_player.pegsColor.push(human_player.colorChoice)
    end

    #feedback on each guess!
    if computer.colorCode == human_player.pegsColor
       for i in (0..3)
        board.hintPegs[j] = "\u2547".colorize(:red)
        j += 1
       end
        board.display_board
        puts "CONGRATS YOU WON!".colorize(:green)
        break
    end
    
    for i in (0..3)
        if computer.colorCode[i] == human_player.pegsColor[i]
            board.hintPegs[j] = "\u2547".colorize(:red)
            computer.colorCode[i] = 0
            human_player.pegsColor[i] = 1
            j += 1
        end
    end

    human_player.pegsColor.each_with_index do |human_color, human_index|
        computer.colorCode.each_with_index do |comp_color,comp_index| 
            if human_color == comp_color && human_index == comp_index
               board.hintPegs[j] = "\u2547".colorize(:red)
               j += 1
               computer.colorCode[comp_index] = 0
               break
            elsif human_color == comp_color && human_index != comp_index
                board.hintPegs[j] = "\u2547".colorize(:white)
                j += 1
                computer.colorCode[comp_index] = 0
               break
            end
        end
    end
    computer.colorCode = placeholder.clone
    # p human_player.pegsColor #for debug
    j = y
    x = y 
    y += 4
    board.display_board
    human_player.del_pegs_color
    count += 1
end
 puts "This was computer's code #{computer.colorCode}"
end

if user_input == 1
    puts "You are the code Maker, so you gotta create your own code"
    puts "ENTER ONE COLOR AT A TIME"
    puts "Make your code based on these colors"
    puts "red".colorize(:red),"blue".colorize(:blue),"black".colorize(:black),"green".colorize(:green),"yellow".colorize(:yellow), "magenta".colorize(:magenta),"cyan".colorize(:cyan),"white".colorize(:white)
    
    human_player.create_code
    p human_player.colorCode    

end