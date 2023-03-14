class Rabbit
  attr_reader :name, 
              :num_syllables
  
  def initialize(attributes)
    @num_syllables = attributes[:num_syllables]
    @name = attributes[:name].concat(' Rabbit') if @num_syllables == 2
    @name = attributes[:name] if @num_syllables != 2
  end
end