# *********************Challenge 1***********************
class MathDojo
    attr_accessor :result

    def initialize
        @result = 0
    end

    def add *params
        params.each {|param| @result+=param}
        self
    end

    def subtract *params
        params.each {|param| @result-=param}
        self
    end
end

challenge1 = MathDojo.new.add(2).add(2,5).subtract(3,2).result
puts challenge1

# *********************Challenge 2***********************

class AddSub
    attr_accessor :result

    def initialize
        @result = 0
    end

    def add *params
        @result += params.flatten.reduce(0, :+)
        self
    end

    def subtract *params
        @result -= params.flatten.reduce(0, :+)
        self
    end
end

challenge2 = AddSub.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
puts challenge2