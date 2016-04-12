
class Cat
  
  # constants
  @@EATS = ["fish", "milk", "cheese", "kibble"]
  
  # instance vars
  @purr = false
  
  def initialize(name)
    @name = name
  end
  
  def get_name
    return @name
  end

  def is_purring
    return @purr
  end

  def pet
    @purr = true
  end

  def will_eat(food)
    return @@eats.include? food
  end
end
