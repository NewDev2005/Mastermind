class Computer
    attr_accessor :colorCode, :colors_available
    def initialize
        @colorCode = []
        @colors_available = [:black,:red,:green,:yellow,:magenta,:cyan,:white,:blue]
      
    end

    def code_maker()
        count = 0
        while count < 4
            @colorCode.push(@colors_available[rand(0..7)])
            count += 1
        end
    end

    def del_previous_color()
        for i in (0..4)
            @colorCode.pop
        end
    end

end



