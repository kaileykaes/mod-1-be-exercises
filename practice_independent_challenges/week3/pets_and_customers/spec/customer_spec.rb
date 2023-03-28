require 'spec_helper'

RSpec.describe Customer do
  before(:each) do
    @joel = Customer.new("Joel", 2) 
    @samson = Pet.new({name: "Samson", type: :dog, age: 3})    
    @lucy = Pet.new({name: "Lucy", type: :cat, age: 12})
  end

  it 'exists and has attr' do
    expect(@joel).to be_a Customer
    expect(@joel.name).to eq('Joel')
    expect(@joel.id).to eq(2)
    expect(@joel.pets).to eq([])
  end

  it '#adopt' do 
    @joel.adopt(@samson)
    @joel.adopt(@lucy) 
    expect(@joel.pets).to eq([@samson, @lucy])
  end

  it 'starts with no balance' do 
    expect(@joel.outstanding_balance).to eq(0)
  end

  it '#charge' do 
    @joel.charge(15)
    @joel.charge(7)
    expect(@joel.outstanding_balance).to eq(22)
  end
end