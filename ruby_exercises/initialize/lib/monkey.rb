class Monkey
  attr_reader :details, 
              :name, 
              :type, 
              :favorite_food
  
  def initialize(details)
    @name = details[0]
    @type = details[1]
    @favorite_food = details[2]
  end
end