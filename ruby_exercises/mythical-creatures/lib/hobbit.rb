class Hobbit
  attr_reader :name, 
              :disposition, 
              :age

  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
  end  

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @age >= 33 
  end

  def old? 
    @age > 100 
  end

  def has_ring?(hobbit_name)
    hobbit_name == 'Frodo' 
  end

  def is_short?
    true
  end
end