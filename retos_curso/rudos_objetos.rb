# Néstor Argüello
#
# El objetivo de este reto es encontrar y
# corregir todos los errores

class Human

  attr_accessor :name, :last_name, :identification

  @@what_we_are = "Human"

  def initialize name, lastName, identification
    @name = name
    @last_name = lastName
    @identification = identification
  end

  def sayHello
    p "Hi, my name is: #{self.name} #{self.last_name}, and my DNI is #{self.identification}"
  end

  def remake name, last_name, identification
    self.name = name
    self.last_name = last_name
    self.identification = identification
  end

  def what_i_am
    p "I think we are #{@@what_we_are}'s"
  end

  def now_we_are_monsters
    @@what_we_are = "Monster"
  end

  def self.back_to_normal
    @@what_we_are = "Human"
  end

  def self.what_are_we?
    p "#{@@what_we_are}"
  end

end


Human.what_are_we?

x = Human.new "José", "Rodriguez", "V-20802029"
y = Human.new "Daniel", "Corchea", "V-21313221"

x.sayHello
y.sayHello

x.remake "Roderick", "Marcano", "V-23423425"
y.remake "Juan", "Vitriago", "V-20312213"

x.sayHello
y.sayHello

x.what_i_am
y.what_i_am

x.now_we_are_monsters

x.what_i_am
y.what_i_am

Human.back_to_normal

x.what_i_am
y.what_i_am
