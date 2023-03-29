require 'spec_helper'

RSpec.describe Groomer do
  before(:each) do
    @groomer = Groomer.new('Judy')
    @joel = Customer.new("Joel", 2) 
    @samson = Pet.new({name: "Samson", type: :dog, age: 3})    
    @lucy = Pet.new({name: "Lucy", type: :cat, age: 12})
  end

  it 'exists' do
    expect(@groomer).to be_a Groomer
  end

  it 'has a name' do 
    expect(@groomer.name).to eq('Judy')
  end

  it 'starts with no customers' do 
    expect(@groomer.customers).to eq([])
  end
end