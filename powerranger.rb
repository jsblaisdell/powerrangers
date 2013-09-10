class Person
  def initialize(name)
    @name = name
    @caffeine_level = 0
  end

  def run
    "#{@name} ran away."
  end

  def scream(string)
    "#{string.upcase}!!!"
  end

  def drink_coffee
    @caffeine_level += 1
  end
end

class PowerRanger
end

class EvilNinja
end

bob = Person.new("Bob")
puts bob.scream("help")
puts bob.run
