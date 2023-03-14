class Narwhal
  attr_reader :cute, 
              :weight, 
              :name
  
  def initialize(attributes)
    @cute = attributes[:cute]
    @weight = attributes[:weight]
    @name = attributes[:name]
  end

  def cute?
    if @cute == true
      true 
    else
      false
    end
  end
end