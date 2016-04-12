
class Cat
  def initialize(name)
    @name = name
    @purr = false
  end
  def get_name
    return @name
  end

  def is_purring
    return @purr
  end

  def pet
    @purr = true
    return @purr
  end

  def will_eat(food)
    eats = ["fish", "milk", "cheese", "kibble"]
    return eats.include? food
  end
end
