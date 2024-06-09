class Computer
    attr_accessor :colorCode
    def initialize
        @colorCode = []
    end

    def code_maker()
        count = 0
        while count < 4
            colors_avilable = [:black,:red,:green,:yellow,:magenta,:cyan,:white,:blue]
            @colorCode.push(colors_avilable[rand(0..7)])
            count += 1
        end
    end

    def del_previous_color()
        for i in (0..4)
            @colorCode.pop
        end
    end

end



