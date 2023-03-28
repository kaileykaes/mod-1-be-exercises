class Pet
  attr_reader :name, 
              :type, 
              :age
  
  def initialize(attributes)
    @name = attributes[:name]
    @type = attributes[:type]
    @age = attributes[:age]
  end  
end