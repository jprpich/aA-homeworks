class Employee 
    attr_accessor :boss 
    attr_reader :name, :salary 

    def initialize(name, title, salary, boss = nil)
        @name, @title, @salary, @boss = name, title, salary, boss
    end

    def bonus(multiplyer)
        @salary * multiplyer
    end

    def boss=(boss)
        @boss = boss 
        boss.employees << self 
    end

end