class Werewolf
  attr_reader :name, 
              :location, 
              :humanness, 
              :wolfiness
  
  def initialize(name, location = nil)
    @name = name
    @location = location
    @humanness = true
    @wolfiness = false
  end

  def human?
    if @humanness == true
      true 
    else 
      false
    end
  end

  def wolf?
    return true if @wolfiness == true
    return false if @wolfiness == false
  end

  def change!
    if 
      @humanness == false
      @humanness = true 
    else 
      @humanness = false
    end
    if 
      @wolfiness == false
      @wolfiness = true
    else
      @wolfiness = false
    end 
  end

end