require_relative "employee.rb"

class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss = nil)
        super
        @employees = []
    end

    def bonus(multiplyer)
        emp_salary_sum = 0

        @employees.each do |emp|
            emp_salary_sum += emp.salary
        end
        p emp_salary_sum
        emp_salary_sum * multiplyer
    end
end


ben = Employee.new("Ben", 'carpet cleaner', 1000)
alex = Manager.new("Alex", "CEO", 60000)

p ben
p alex
ben.boss = alex
p ben.boss.name 
p alex.bonus(0.2)
