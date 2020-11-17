require_relative "manager"

class Employee
    attr_reader :name, :title, :salary, :boss
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        if Manager.managers.has_key?(self.name)
        return @managers[self.name].sum * multiplier
        elsif self.boss == nil
            return moneys * multiplier
        else
        return self.salary * multiplier
    end
    end
end

ned = Employee.new("Ned", "Founder", 1000000)
darren = Employee.new("Darren", "TA Manager", 78000, "Ned")
shawna = Employee.new("Shawna", "TA", 12000, "Darren")
david = Employee.new("David", "TA", 10000, "Darren")

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000