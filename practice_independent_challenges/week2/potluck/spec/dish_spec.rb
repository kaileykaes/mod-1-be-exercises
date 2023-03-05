require 'spec_helper'

RSpec.describe Dish do
  before(:each) do
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
  end

  it 'exists' do
    expect(@couscous_salad).to be_a(Dish)
  end

  it 'has attributes' do 
    expect(@couscous_salad.name).to eq("Couscous Salad")
    expect(@couscous_salad.category).to eq(:appetizer)
  end
end