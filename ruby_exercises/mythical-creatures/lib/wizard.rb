class Wizard
  attr_reader :name,
              :bearded, 
              :spell_count
  
  def initialize(name, bearded = true)
    @name = name
    @bearded = bearded
    @spell_count = 0
  end  

  def bearded?
    bearded == true
  end

  def incantation(spell)
    spell.prepend('sudo ')
  end

  def cast
    @spell_count += 1
    "MAGIC MISSILE!"
  end

  def rested?
    @spell_count < 3
  end
end