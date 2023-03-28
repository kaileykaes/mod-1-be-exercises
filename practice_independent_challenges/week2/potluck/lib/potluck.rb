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

  def menu 
    the_menu = Hash.new {|hash_obj, key| hash_obj[key] = []}
    appetizers = get_all_from_category(:appetizer).map {|dish| dish.name}
    appetizers.each do |appetizer|
      the_menu[:appetizers] << appetizer
    end
    desserts = get_all_from_category(:dessert).map {|dish| dish.name}
    desserts.each do |dessert|
      the_menu[:desserts] << dessert
    end
    entres = get_all_from_category(:entre).map {|dish| dish.name}
    entres.each do |entre|
      the_menu[:entres] << entre
    end
    the_menu
  end
end