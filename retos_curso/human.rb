# Néstor Argüello
#
# Diseña una clase Human, siguiendo las siguientes especificaciones:
#     Minimo 5 atributos
#     Mínimo 5 métodos (Sin contar el initialize)
#     Los atributos pueden ser leídos más no sobreescritos.
#
class Human
  attr_reader(:name, :lastname, :age, :weight, :happiness)
  # attr_accessor

  def initialize(attributes = {})
    @name = attributes[:name]
    @lastname = attributes[:lastname]
    @age = attributes[:age]
    @weight = attributes[:weight]
    @happiness = true
  end
end

def eat
  @weight += 2
  @happiness = true
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
