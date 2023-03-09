class Pirate
  attr_reader :name, 
              :job, 
              :heinous_act, 
              :booty
  
  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @heinous_act = 0
    @booty = 0
  end

  def commit_heinous_act
    @heinous_act += 1
  end

  def cursed?
    if @heinous_act >= 3
      true 
    else
      false
    end
  end
end