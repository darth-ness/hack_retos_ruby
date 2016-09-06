# Néstor Argüello
#
# Diseña una clase Human, siguiendo las siguientes especificaciones:
#     Minimo 5 atributos
#     Mínimo 5 métodos (Sin contar el initialize)
#     Los atributos pueden ser leídos más no sobreescritos.
#
class Human
  attr_reader :name, :lastname, :weight, :height, :happiness
  # attr_accessor

  def initialize name, lastname, weight
    @name = name
    @lastname = lastname
    @height = 1.70
    @weight = weight
    @happiness = @weight > 70 && @weight < 80? true : false
  end

  def tell_status
    puts "#{name} #{lastname} mide #{height}mts y pesa #{weight}kgs."
    look_happiness
  end

  def eat
    @weight += 2
    look_happiness
  end

  def excersise
    @weight -= 2
    look_happiness
  end

  def diet
    @weight -= 2
    look_happiness
  end

  def status
    puts
  end

  private

  def mood
    mood = @happiness? "feliz!" : "triste..."
  end

  def look_happiness
    if weight <= 70
      @happiness = false
      mood
      puts "#{name} esta #{mood}, debe comer mas!"
      puts "Esta pesando #{weight}kgs"
    elsif weight >= 80
      @happiness = false
      mood
      puts "#{name} esta #{mood}, debe hacer ejercicios o dieta!"
      puts "Esta pesando #{weight}kgs"
    else
      @happiness = true
      mood
      puts "#{name} esta #{mood}! esta en su peso ideal!"
      puts "Esta pesando #{weight}kgs"
    end
  end
end
