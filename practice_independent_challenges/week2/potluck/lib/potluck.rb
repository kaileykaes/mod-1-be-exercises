class Potluck
  attr_reader :date,
              :dishes
  
  def initialize(date)
    @date = date
    @dishes = []
  end  

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    category_dishes = @dishes.find_all do |dish|
      dish.category == category
    end
    category_dishes
  end
end