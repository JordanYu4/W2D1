class Employee
  attr_reader :name, :salary, :title, :boss

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    boss.employees << self unless boss.nil?
  end


  def bonus(multiplier)

    if self.class == Manager && self.employees.length > 0
      manager_bonus = 0
      self.employees.each do |subordinate|
        manager_bonus += subordinate.bonus(multiplier)
      end
      return manager_bonus
    else
      return self.salary * multiplier
    end
  end

end

class Manager < Employee
  attr_accessor :employees

  def initialize(name, title, salary, boss)
    super
    @employees = []
  end

end

ned = Manager.new("Ned", "Founder", 1_000_000, nil)
darren = Manager.new("Darren", "TA Manager", 78_000, ned)
shawna = Employee.new("Shawna", "TA", 12_000, darren)
david = Employee.new("David", "TA", 10_000, darren)

# p shawna.boss.name
# p ned.employees.map { |employee| employee.name }
# p ned.bonus(5)
# p ned.bonus(5) == 500_000
# p darren.bonus(5)
# p darren.bonus(5) == 110_000
# p shawna.bonus(5)
# p shawna.bonus(5) == 60_000
# p david.bonus(5)
# p david.bonus(5) == 50_000
