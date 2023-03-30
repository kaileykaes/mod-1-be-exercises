class Direwolf
  attr_reader :name, 
              :home, 
              :size, 
              :starks_to_protect
  
  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts = true
  end

  def protects(stark)
    if @starks_to_protect.length < 2 
      @starks_to_protect << stark if stark.location == @home 
      stark.safety = true
      @hunts = false
    end
  end

  def leaves(stark)
    @starks_to_protect.delete(stark)
    stark.safety = false
    stark
  end
  
  def hunts_white_walkers?
    @hunts == true
  end
end

class Stark
  attr_reader :name, 
              :location
  attr_accessor   :safety
  
  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safety = false
  end

  def safe?
    @safety == true
  end

  def house_words
    'Winter is Coming'
  end
end
