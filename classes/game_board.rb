require 'colorize'

class GameBoard
    attr_reader :pegs
    def initialize()
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
        puts " #{vertical_line} #{@pegs[36]}   #{vertical_line} #{@pegs[37]}   #{vertical_line} #{@pegs[38]}  #{vertical_line} #{@pegs[39]}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@pegs[32]}   #{vertical_line} #{@pegs[33]}   #{vertical_line} #{@pegs[34]}  #{vertical_line} #{@pegs[35]}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@pegs[28]}   #{vertical_line} #{@pegs[29]}   #{vertical_line} #{@pegs[30]}  #{vertical_line} #{@pegs[31]}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@pegs[24]}   #{vertical_line} #{@pegs[25]}   #{vertical_line} #{@pegs[26]}  #{vertical_line} #{@pegs[27]}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@pegs[20]}   #{vertical_line} #{@pegs[21]}   #{vertical_line} #{@pegs[22]}  #{vertical_line} #{@pegs[23]}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@pegs[16]}   #{vertical_line} #{@pegs[17]}   #{vertical_line} #{@pegs[18]}  #{vertical_line} #{@pegs[19]}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@pegs[12]}   #{vertical_line} #{@pegs[13]}   #{vertical_line} #{@pegs[14]}  #{vertical_line} #{@pegs[15]}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@pegs[8]}   #{vertical_line} #{@pegs[9]}   #{vertical_line} #{@pegs[10]}  #{vertical_line} #{@pegs[11]}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@pegs[4]}   #{vertical_line} #{@pegs[5]}   #{vertical_line} #{@pegs[6]}  #{vertical_line} #{@pegs[7]}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@pegs[0]}   #{vertical_line} #{@pegs[1]}   #{vertical_line} #{@pegs[2]}  #{vertical_line} #{@pegs[3]}  #{vertical_line}"
        puts " \u2514#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}\u2518"
    end
end
