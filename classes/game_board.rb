require 'colorize'

class GameBoard
    attr_writer :zero,:one,:two,:three,:four,:five,:six,:seven,:eight,:nine,:ten,:eleven,:twelve,:thirteen,:fourteen,:fifteen,:sixteen,:seventeen,:eighteen,:nineteen,:twenty,:twentyone,:twentytwo,:twentythree,:twentyfour,:twentyfive,:twentysix,:twentyseven,:twentyeight

    def initialize(*pegs)
        @zero = "\u25CB"
        @one = "\u25CB"
        @two = "\u25CB"
        @three = "\u25CB"
        @four ="\u25CB"
        @five = "\u25CB"
        @six = "\u25CB"
        @seven = "\u25CB"
        @eight = "\u25CB"
        @nine = "\u25CB"
        @ten = "\u25CB"
        @eleven = "\u25CB"
        @twelve = "\u25CB"
        @thirteen = "\u25CB"
        @fourteen = "\u25CB"
        @fifteen = "\u25CB"
        @sixteen = "\u25CB"
        @seventeen = "\u25CB"
        @eighteen = "\u25CB"
        @nineteen = "\u25CB"
        @twenty = "\u25CB"
        @twentyone = "\u25CB"
        @twentytwo = "\u25CB"
        @twentythree = "\u25CB"
        @twentyfour = "\u25CB"
        @twentyfive = "\u25CB"
        @twentysix = "\u25CB"
        @twentyseven = "\u25CB"
        @twentyeight = "\u25CB"
        @twentynine = "\u25CB"
        @thirty = "\u25CB"
        @thirtyone = "\u25CB"
        @thirtytwo = "\u25CB"
        @thirtythree = "\u25CB"
        @thirtyfour = "\u25CB"
        @thirtyfive = "\u25CB"
        @thirtysix = "\u25CB"
        @thirtyseven = "\u25CB"
        @thirtyeight = "\u25CB"
        @thirtynine = "\u25CB"
    end
   

    def display_board(*pegs)
        # pegs = "\u25CF".colorize(:magenta)
        horizontal_line = "\u2500\u2500\u2500"
        vertical_line = "\u2502"
        x = " \u250C#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}\u2510"
        y = " #{vertical_line}  #{pegs}  #{vertical_line}  #{pegs}  #{vertical_line}  #{pegs}   #{vertical_line}  #{pegs}  #{vertical_line}"
  

        puts x
        puts " #{vertical_line} #{@thirtysix}   #{vertical_line} #{@thirtyseven}   #{vertical_line} #{@thirtyeight}  #{vertical_line} #{@thirtynine}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@thirtytwo}   #{vertical_line} #{@thirtythree}   #{vertical_line} #{@thirtyfour}  #{vertical_line} #{@thirtyfive}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@twentyeight}   #{vertical_line} #{@twentynine}   #{vertical_line} #{@thirty}  #{vertical_line} #{@thirtyone}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@twentyfour}   #{vertical_line} #{@twentyfive}   #{vertical_line} #{@twentysix}  #{vertical_line} #{@twentyseven}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@twenty}   #{vertical_line} #{@twentyone}   #{vertical_line} #{@twentytwo}  #{vertical_line} #{@twentythree}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@sixteen}   #{vertical_line} #{@seventeen}   #{vertical_line} #{@eighteen}  #{vertical_line} #{@nineteen}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@twelve}   #{vertical_line} #{@thirteen}   #{vertical_line} #{@fourteen}  #{vertical_line} #{@fifteen}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@eight}   #{vertical_line} #{@nine}   #{vertical_line} #{@ten}  #{vertical_line} #{@eleven}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@four}   #{vertical_line} #{@five}   #{vertical_line} #{@six}  #{vertical_line} #{@seven}  #{vertical_line}"
        puts x
        puts " #{vertical_line} #{@zero}   #{vertical_line} #{@one}   #{vertical_line} #{@two}  #{vertical_line} #{@three}  #{vertical_line}"
        puts " \u2514#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}#{horizontal_line}\u2518"
    end
end
# board = GameBoard.new
# board.zero =  "\u25CF".colorize(:red)
# board.display_board