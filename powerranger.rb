require 'modules.rb'

class Person
  attr_accessor :name, :caffeine_level
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

class PowerRanger < Person

  include Fight

  def initialize(name, strength, color)
    super(name)
    @strength = strength
    @color = color
  end

  def rest
    "zzzzzzzzzzzzzzzzzzz..."
  end

  def self.use_megazord(target)
    puts target.scream("ow")
    puts target.run
    puts target.scream("ow")
    puts target.run
    target.caffeine_level -= 1
  end
end

class EvilNinja < Person

  include Fight

  def initialize(name, strength, evilness)
    super(name)
    @strength = strength
    @evilness = evilness
  end

  def cause_mayhem(target)
    target.caffeine_level = 0
    puts "mayhem caused"
  end
end

def fight_scene(person1, person2, pr1, pr2, ninja1, ninja2)
  person1.drink_coffee
  person2.drink_coffee
  person1.drink_coffee
  ninja1.cause_mayhem(person1)
  ninja2.cause_mayhem(person2)
  pr1.punch(ninja1)
  pr2.punch(ninja2)
  ninja1.punch(pr1)
  ninja2.punch(pr2)
  pr1.rest
  pr2.rest
  PowerRanger.use_megazord(ninja1)
  PowerRanger.use_megazord(ninja2)
end

bob = Person.new("Bob")
phil = Person.new("Phil")
red = PowerRanger.new("John", 5, "red")
green = PowerRanger.new("Sean", 4, "green")
ninja1 = EvilNinja.new("Evil Ninja 1", 10, 10)
ninja2 = EvilNinja.new("Evil Ninja 1", 15, 30)

fight_scene(bob, phil, red, green, ninja1, ninja2)
