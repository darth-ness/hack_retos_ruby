# Néstor Argüello
#
class Human
  attr_accessor :name
  def initialize name
    @name = name
  end
end

class Child < Human
  attr_accessor :toys
  def initialize name, toys
    super(name)
    @toys = toys
  end
end

x = Human.new "José"
y = Child.new "Juan", ["Metras", "Perinola"]

puts x.name
puts y.name

y.toys.each {|toy| puts toy}
