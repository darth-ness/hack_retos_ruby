# Néstor Argüello
#
# Diseña una clase Human, siguiendo las siguientes especificaciones:
#     Minimo 5 atributos
#     Mínimo 5 métodos (Sin contar el initialize)
#     Los atributos pueden ser leídos más no sobreescritos.
#
class Human
  attr_reader :name, :lastname, :age, :weight, :happiness
  # attr_accessor

  def initialize name, lastname, age, weight
    @name = name
    @lastname = lastname
    @age = age
    @weight = weight
    @happiness = true
  end
end

def eat
  self.weight += 2
  self.happiness = true
  mood = @happiness? "feliz!" : "triste..."
  puts "#{name} esta #{mood}"
  puts "Ahora pesa #{weight} kgs"
end

def excersise
  @weight -= 2
  @happiness = true
  mood = @happiness? "feliz!" : "triste..."
  puts "#{name} esta #{mood}"
  puts "Ahora pesa #{weight} kgs"
end

def diet
  @weight -= 2
  @happiness = false
  mood = @happiness? "feliz!" : "triste..."
  puts "#{name} esta #{mood}"
  puts "Ahora pesa #{weight} kgs"
end

def turn_year
  @age += 1
  @happiness = false
  mood = @happiness? "feliz!" : "triste..."
  puts "#{name} esta #{mood}"
  puts "Ahora tiene #{age} años"
end

def tell_human_status

end
