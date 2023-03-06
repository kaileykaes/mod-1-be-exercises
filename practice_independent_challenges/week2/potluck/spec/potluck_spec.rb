require 'spec_helper'

RSpec.describe Potluck do
  before(:each) do
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  end

  it 'exists and has attributes' do
    expect(@potluck).to be_a(Potluck)
    expect(@potluck.date).to eq("7-13-18")
    expect(@potluck.dishes).to eq([])
  end


end