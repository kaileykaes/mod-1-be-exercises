class Ogre  
  attr_reader :name, 
              :home, 
              :swings, 
              :encounter_counter
  
  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    @encounter_counter += 1
    if human.notices_ogre?
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1
    if @swings % 2 == 0
      human.bruise = true
    end
  end

  def apologize(human)
    human.bruise = false
  end
  
end

class Human 
  attr_reader :name
  attr_accessor   :encounter_counter, 
                  :bruise
  
  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @bruise = false
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      true 
    else
      false
    end
  end

  def knocked_out?
    if bruise == true
      true
    else
      false
    end
  end
end