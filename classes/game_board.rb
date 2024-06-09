require 'colorize'

class GameBoard
    attr_reader :pegs, :hintPegs
    def initialize()
        @hintPegs = []
        for i in (1..41)
            hintPegs.push("")
        end

        @pegs = []
        for i in (1...41)
            pegs.push("\u25CB")
        end
    end
   
    def display_board()
        horizontal_line = "\u2500\u2500\u2500"
        vertical_line = "\u2502"
        x = " \u250C#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}\u2510"

        
        puts x
        puts " #{vertical_line} #{@pegs[36]}   #{vertical_line} #{@pegs[37]}   #{vertical_line} #{@pegs[38]}  #{vertical_line} #{@pegs[39]}  #{vertical_line} #{@hintPegs[36]} #{@hintPegs[37]} #{@hintPegs[38]} #{@hintPegs[39]}"
        puts x
        puts " #{vertical_line} #{@pegs[32]}   #{vertical_line} #{@pegs[33]}   #{vertical_line} #{@pegs[34]}  #{vertical_line} #{@pegs[35]}  #{vertical_line} #{@hintPegs[32]} #{@hintPegs[33]} #{@hintPegs[34]} #{@hintPegs[35]}"
        puts x
        puts " #{vertical_line} #{@pegs[28]}   #{vertical_line} #{@pegs[29]}   #{vertical_line} #{@pegs[30]}  #{vertical_line} #{@pegs[31]}  #{vertical_line} #{@hintPegs[28]} #{@hintPegs[29]} #{@hintPegs[30]} #{@hintPegs[31]}"
        puts x
        puts " #{vertical_line} #{@pegs[24]}   #{vertical_line} #{@pegs[25]}   #{vertical_line} #{@pegs[26]}  #{vertical_line} #{@pegs[27]}  #{vertical_line} #{@hintPegs[24]} #{@hintPegs[25]} #{@hintPegs[26]} #{@hintPegs[27]}"
        puts x
        puts " #{vertical_line} #{@pegs[20]}   #{vertical_line} #{@pegs[21]}   #{vertical_line} #{@pegs[22]}  #{vertical_line} #{@pegs[23]}  #{vertical_line} #{@hintPegs[20]} #{@hintPegs[21]} #{@hintPegs[22]} #{@hintPegs[23]}"
        puts x
        puts " #{vertical_line} #{@pegs[16]}   #{vertical_line} #{@pegs[17]}   #{vertical_line} #{@pegs[18]}  #{vertical_line} #{@pegs[19]}  #{vertical_line} #{@hintPegs[16]} #{@hintPegs[17]} #{@hintPegs[18]} #{@hintPegs[19]}"
        puts x
        puts " #{vertical_line} #{@pegs[12]}   #{vertical_line} #{@pegs[13]}   #{vertical_line} #{@pegs[14]}  #{vertical_line} #{@pegs[15]}  #{vertical_line} #{@hintPegs[12]} #{@hintPegs[13]} #{@hintPegs[14]} #{@hintPegs[15]}"
        puts x
        puts " #{vertical_line} #{@pegs[8]}   #{vertical_line} #{@pegs[9]}   #{vertical_line} #{@pegs[10]}  #{vertical_line} #{@pegs[11]}  #{vertical_line} #{@hintPegs[8]} #{@hintPegs[9]} #{@hintPegs[10]} #{@hintPegs[11]}"
        puts x
        puts " #{vertical_line} #{@pegs[4]}   #{vertical_line} #{@pegs[5]}   #{vertical_line} #{@pegs[6]}  #{vertical_line} #{@pegs[7]}  #{vertical_line} #{@hintPegs[4]} #{@hintPegs[5]} #{@hintPegs[6]} #{@hintPegs[7]}"
        puts x
        puts " #{vertical_line} #{@pegs[0]}   #{vertical_line} #{@pegs[1]}   #{vertical_line} #{@pegs[2]}  #{vertical_line} #{@pegs[3]}  #{vertical_line} #{@hintPegs[0]} #{@hintPegs[1]} #{@hintPegs[2]} #{@hintPegs[3]}"
        puts " \u2514#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}\u2518"
       
        
    end
end

# board = GameBoard.new
# board.hintPegs[0] = "\u2547"
# board.hintPegs[34] = "\u2547"
# board.hintPegs[35] = "\u2547"
# board.hintPegs[36] = "\u2547"
# board.hintPegs[37] = "\u2547"
# board.display_board
