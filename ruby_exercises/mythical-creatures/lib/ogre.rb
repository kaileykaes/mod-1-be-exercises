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
    swing_at(human) if human.notices_ogre?
  end

  def swing_at(human)
    @swings += 1
    human.bruise = true if @swings % 2 == 0
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
    @encounter_counter % 3 == 0
  end

  def knocked_out?
    bruise == true
  end
end