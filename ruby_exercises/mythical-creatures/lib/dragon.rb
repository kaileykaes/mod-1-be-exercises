class Dragon
  attr_reader :name, 
              :color, 
              :rider
  
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hunger_count = 0
  end

  def hungry?
    unless @hunger_count > 2
       true
    else
      false
    end
  end

  def eat 
    @hunger_count += 1
  end
end