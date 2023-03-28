class Pet
  attr_reader :name, 
              :type, 
              :age, 
              :eaten
  
  def initialize(attributes)
    @name = attributes[:name]
    @type = attributes[:type]
    @age = attributes[:age]
    @eaten = false
  end  

  def fed? 
    @eaten
  end

  def feed
    @eaten = true
  end
end