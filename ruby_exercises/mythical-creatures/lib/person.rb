class Person
  attr_reader :name
  attr_accessor :stone
  def initialize(name, stone = false)
    @name = name
    @stone = stone
  end

  def stoned?
    if @stone 
      true
    else 
      false
    end
  end
end