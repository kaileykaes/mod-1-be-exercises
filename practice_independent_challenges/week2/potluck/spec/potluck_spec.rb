require 'spec_helper'

RSpec.describe Potluck do
  before(:each) do
    @potluck = Potluck.new("7-13-18")
    @bean_dip = Dish.new("Bean Dip", :appetizer)
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @summer_pizza = Dish.new("Summer Pizza", :appetizer)
    @roast_pork = Dish.new("Roast Pork", :entre)
    @candy_salad = Dish.new("Candy Salad", :dessert)
  end

  it 'exists and has attributes' do
    expect(@potluck).to be_a(Potluck)
    expect(@potluck.date).to eq("7-13-18")
    expect(@potluck.dishes).to eq([])
  end

  it 'adds dishes' do 
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    expect(@potluck.dishes.length).to eq(2)
    expect(@potluck.dishes).to be_a(Array)
  end

  it 'gets all from a category' do
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@candy_salad)
    expect(@potluck.get_all_from_category(:appetizer)).to be_a(Array)
    expect(@potluck.get_all_from_category(:appetizer)[0]).to eq(@couscous_salad)
    expect(@potluck.get_all_from_category(:appetizer)[0].name).to eq("Couscous Salad")
  end

  it 'stores menu by category' do 
    @potluck.add_dish(@bean_dip)
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@candy_salad)
    expect(@potluck.menu).to be_a(Hash)
    expect(@potluck.menu).to eq({:appetizers=>["Bean Dip", "Couscous Salad", "Summer Pizza"],
      :entres=>["Cocktail Meatballs", "Roast Pork"],
      :desserts=>["Candy Salad"]
      })
  end
  it 'finds the ratio of dishes from categories' do
    @potluck.add_dish(@bean_dip)
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@candy_salad)
    require 'pry'; binding.pry
    expect(@potluck.ratio(:appetizer)).to eq(50.0)
  end
end