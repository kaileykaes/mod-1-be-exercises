class Centaur
  attr_reader :name, 
              :breed, 
              :crankiness, 
              :stands, 
              :lays
  
  def initialize(name, breed)
    @name = name
    @breed = breed
    @crankiness = 0
    @stands = true
    @lays = false
  end 

  def shoot
    if cranky? == true || @lays == true
      'NO!'
    else 
      @crankiness += 1
      'Twang!!!'
    end
  end

  def run 
    if @lays == true 
      'NO!'
    else 
    @crankiness += 1
    'Clop clop clop clop!'
    end
  end

  def cranky? 
    if @crankiness >= 3
      true
    else 
      false
    end
  end

  def standing? 
    @stands == true 
  end

  def sleep
    @stands ? 'NO!' : @crankiness = 0
  end
  
  def lay_down
    @stands = false
    @lays = true
  end

  def laying? 
    @lays 
  end

  def stand_up
    @lays ? @lays = false & @stands = true : @stands
  end

  def sleep_potion
    if @lays == true
      'NO!'
    elsif 
      cranky? 
      @crankiness = 0
    else 
      'HURCK! Blegh, ow...'
    end
  end
end