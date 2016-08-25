
class Person

  attr_reader(:name, :lastname)
  attr_accessor(:age, :weight, :height)

  def initialize(attribute = {})
    @nombre = attribute[:nombre]
    @lastname = attribute[:lastname]
    @age = attribute[:age]
    @weight = attribute[:weight]
    @height = attribute[:height]
  end

  def eat
    @weight += 1
  end

  def grow
    @age += 1
    @height += 2
  end

  def run
    @weight -= 1
  end

end
