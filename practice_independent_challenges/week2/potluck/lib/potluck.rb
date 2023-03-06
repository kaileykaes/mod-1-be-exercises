class Potluck 
  attr_reader :date, :dishes
  
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    category_dishes = []
    @dishes.each do |dish|
      category_dishes << dish if dish.category == category 
    end
  end

  def menu 
    potluck_menu = {}
    app = []
    ent = []
    des = []
    @dishes.each{|dish| app << dish.name if dish.category == :appetizer}
    @dishes.each{|dish|ent << dish.name if dish.category == :entre}
    @dishes.each{|dish|des << dish.name if dish.category == :dessert}
    potluck_menu[:appetizers] = app.sort
    potluck_menu[:entres] = ent.sort
    potluck_menu[:desserts] = des.sort
    potluck_menu 
  end

  def ratio
  end
end