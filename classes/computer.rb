class Computer
    attr_reader :color
    def initialize
        @color = []
    end

    def code_maker()
        count = 0
        while count < 4
            colors_avilable = [:black,:red,:green,:yellow,:magenta,:cyan,:white,:blue]
            @color.push(colors_avilable[rand(0..7)])
            count += 1
        end
        p @color
    end

    def del_previous_color()
        for i in (0..4)
            @color.pop
        end
    end

end

comp = Computer.new
comp.code_maker
comp.del_previous_color
comp.code_maker