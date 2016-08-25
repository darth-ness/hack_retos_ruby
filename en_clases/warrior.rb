
require_relative "./person.rb"

class Warrior <  Person

  def initialize(attribute = {})
    @weapons = attribute[:weapons]
    super
  end
  
end
