require 'colorize'
class Player
    attr_accessor :colorChoice,:pegsColor,:colorCode,:colorsAvailable
    def initialize()
        @colorCode = []
        @colorChoice
        @pegsColor = []
        @colorsAvailable = [:black,:red,:green,:yellow,:magenta,:cyan,:white,:blue]
    end

    def del_pegs_color()
        for i in (0..4)
         pegsColor.pop
        end
    end

    def create_code()
        for i in (0..3)
        player_input = gets.chomp.downcase.to_sym
        until @colorsAvailable.include?(player_input)
            puts "ERROR INVALID_INPUT/COLOR".colorize(:red)
            player_input = gets.chomp.downcase.to_sym
        end
        @colorCode.push(player_input)
    end
    end
end

