class Dragon
  attr_reader :name, 
              :color, 
              :rider, 
              :hunger_count
  
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hunger_count = 3
  end

  def hungry?
    @hunger_count > 0
  end

  def eat 
    @hunger_count -= 1
  end
end