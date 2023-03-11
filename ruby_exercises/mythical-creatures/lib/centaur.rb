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
    if @stands == true 
      @lays = false
      true 
    else 
      false
    end
  end

  def sleep
    if @stands == true
      'NO!'
    else 
      @crankiness = 0
    end
  end
  
  def lay_down
    @stands = false
    @lays = true
  end

  def laying? 
    if @lays == true
      true 
    else 
      false
    end
  end

  def stand_up
    if @lays == true 
      @lays = false & @stands = true
    end
  end

  def sleep_potion
    if @lays == true
      'NO!'
    elsif 
      cranky? == true
      @crankiness = 0
    else 
      'HURCK! Blegh, ow...'
    end
  end
end