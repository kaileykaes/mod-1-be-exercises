require 'spec_helper'

RSpec.describe Veterinarian do
  before(:each) do
    @veterinarian = Veterinarian.new('Dr. Dodson')

    @joel = Customer.new("Joel", 2) 
    @mary = Customer.new('Mary', 5)
    @camry = Customer.new('Camry', 1)
    @jolene = Customer.new('Jolene', 3)
    @jr = Customer.new('J.R', 4)

    @samson = Pet.new({name: "Samson", type: :dog, age: 3})    
    @lucy = Pet.new({name: "Lucy", type: :cat, age: 12})
    @kevin = Pet.new({name: "Kevin", type: :dog, age: 4})    
    @paddington = Pet.new({name: "Paddington", type: :bear, age: 5})
    @nebraska = Pet.new({name: "Nebraska", type: :cat, age: 7})    
    @falafel = Pet.new({name: "Falafel", type: :dog, age: 10})
    @johnson = Pet.new({name: "Johnson", type: :ferret, age: 3})    
    @hoosier = Pet.new({name: "Hoosier", type: :cat, age: 17})
  end

  it 'exists' do
    expect(@veterinarian).to be_a Veterinarian
  end

  it 'has a name' do 
    expect(@veterinarian.name).to eq('Dr. Dodson')
  end
end