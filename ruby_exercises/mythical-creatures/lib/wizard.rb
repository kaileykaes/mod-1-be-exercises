class Wizard
  attr_reader :name,
              :bearded
  
  def initialize(name, bearded = true)
    @name = name
    @bearded = bearded
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
end