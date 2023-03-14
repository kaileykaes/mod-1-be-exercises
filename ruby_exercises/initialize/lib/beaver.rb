class Beaver
  attr_reader :name
  
  def initialize(name)
    @name = name.concat(" the Beaver")
  end  
end