# Néstor Argüello
#
# Crea una clase Vehículo, de la cuál hereden 3 clases más,
# bajo las siguientes especificaciones:
#
#  Mínimo 4 propiedades en la clase padre.
#  Mínimo 4 métodos en la clase padre.
#  Todos las propiedades de la clase padre deben ser
#  heredadas por las demás.
#  Todas las instancias de cada una de las clases hijo,
#  deben poder usar todos los métodos definidos en la clase padre.


# Para delimitar el reto, sólo se referirá a
# vehículos automotores terrestres

class Vehicle

  attr_accessor :speed, :max_speed, :engine_started
  attr_reader :users_capacity

  def initialize max_speed, users_capacity
    @speed = 0
    @max_speed = max_speed
    @engine_started = false
    @users_capacity = users_capacity
  end

  def status
    puts "Capacidad de usuarios: #{self.users_capacity} plazas,"
    puts "Máxima velocidad: #{self.max_speed}Km/h,"
    if self.engine_started
      puts "El motor se encuentra encendido"
    else
      puts "El motor se encuentra apagado"
    end
    puts "Velocidad actual: #{self.speed}Km/h,"
  end

  def start_engine
    if !engine_started
      self.engine_started = true
      puts "Se ha encendido el motor!"
    else
      puts "El motor ya está encendido"
    end
  end

  def stop_engine
    if engine_started
      self.engine_started = false
      puts "Se ha apagado el motor!"
    else
      puts "El motor ya está apagado"
    end
  end

  def increase_speed
    if engine_started
      if self.speed < self.max_speed
        self.speed += 10
        puts "Velocidad actual = #{self.speed}Km/h"
      else
        puts "No se puede acelerar más..."
        puts "Velocidad actual es la máxima: #{self.max_speed}Km/h"
      end
    else
      puts "No se puede acelerar, el motor se encuentra apagado"
    end
  end

  def decrease_speed
    if engine_started
      if self.speed > 0
        self.speed -= 10
        puts "Velocidad actual = #{self.speed}Km/h"
      else
        puts "No se puede desacelerar más..."
        puts "Velocidad actual = 0Km/h"
      end
    else
      puts "No se puede desacelerar, el motor se encuentra apagado"
    end
  end

  def use_break
    if self.speed > 0
      until self.speed == 0
        self.speed -= 10
        puts "#{self.speed}Km/h"
      end
      puts "Velocidad actual = 0km/h"
    end
  end
end

class Motorcycle < Vehicle
  attr_reader :displacement # Cilindrada

  def initialize max_speed, users_capacity, displacement
    super(max_speed, users_capacity)
    @displacement = displacement
  end

end

class Car < Vehicle
  attr_reader :transmission

  def initialize max_speed, users_capacity, transmission
    super(max_speed, users_capacity)
    @transmission = transmission
  end

end

class Bus < Vehicle
  attr_reader :type_of_fuel

  def initialize max_speed, users_capacity, type_of_fuel
    super(max_speed, users_capacity)
    @type_of_fuel = type_of_fuel
  end

end
