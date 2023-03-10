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
    if bearded == true
      true
    else 
      false
    end
  end

  def incantation(spell)
    spell.prepend('sudo ')
  end

  def cast
    @spell_count += 1
    "MAGIC MISSILE!"
  end

  def rested?
   if @spell_count < 3
    true
   else 
    false
   end
  end
end