class Ogre
  attr_reader :name, 
              :home, 
              :human_encounters

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @encounter_counter = 0
  end  

  def encounter
    @encounter_counter += 1
  end
end

