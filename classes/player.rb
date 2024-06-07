require 'colorize'
class Player
    attr_accessor :colorChoice,:pegsColor
    def initialize()
        @colorChoice
        @pegsColor = []
    end

    def del_pegs_color
        for i in (0..4)
         pegsColor.pop
        end
    end
end

