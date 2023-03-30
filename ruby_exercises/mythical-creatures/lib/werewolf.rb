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
    @humanness
  end

  def wolf?
    @wolfiness 
  end

  def change!
    @humanness == false ? @humanness = true : @humanness = false
    @wolfiness == false ? @wolfiness = true : @wolfiness = false
  end
end