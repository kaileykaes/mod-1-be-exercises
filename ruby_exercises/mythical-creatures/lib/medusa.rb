class Medusa
  attr_reader :name, 
              :statues
  
  def initialize(name)
    @name = name
    @statues = []
  end  

  def stare(victim)
    @statues << victim && victim.stone = true
    if @statues.count > 3
      @statues.shift
    end
  end
end