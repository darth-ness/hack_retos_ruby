# Néstor Argüello
#
# Los attr_accesors ayudan bastante, ¿no?
# Pero para que podamos tener algo así, alguien debió haberlo pensado.
# Requerimos que hagas métodos que recreen lo que los accesors hacen
# por nosotros.

class Student

  def initialize id, name, prog_lang
    @id = id
    @name = name
    @prog_lang = prog_lang
  end

  def id
    @id
  end

  def id= num_id
    @id = num_id
  end

  # def name
  #   @name
  # end

  def name= name
    @name = name
  end

  def prog_lang
    @prog_lang
  end

  def prog_lang= prog_lang
    @prog_lang = prog_lang
  end

end
