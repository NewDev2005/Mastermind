require 'colorize'

class GameBoard
   

    def display_board(*pegs)
        pegs = "\u25CF".colorize(:magenta)
        horizontal_line = "\u2500\u2500\u2500"
        vertical_line = "\u2502"
        x = " \u250C#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}\u2510"
        y = " #{vertical_line}  #{pegs}  #{vertical_line}  #{pegs}  #{vertical_line}  #{pegs}   #{vertical_line}  #{pegs}  #{vertical_line}"
  
        for i in (1...12)
            if i == 11
                puts " \u2514#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}\u2518"
            else
                puts x
                puts " #{vertical_line}  #{pegs}  #{vertical_line}  #{pegs}  #{vertical_line}  #{pegs}   #{vertical_line}  #{pegs}  #{vertical_line}"
            end
        end
    end
end
board = GameBoard.new
board.display_board