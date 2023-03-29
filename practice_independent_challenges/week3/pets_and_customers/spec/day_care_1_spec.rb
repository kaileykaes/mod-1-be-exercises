require 'spec_helper'

RSpec.describe DayCare do
  before(:each) do
    @daycare = DayCare.new('Bark Bliss')
    @daycare_2 = DayCare.new('Big Day Out')
    
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
   
    @joel.adopt(@samson)
    @joel.adopt(@lucy) 
    @mary.adopt(@paddington)
    @camry.adopt(@kevin)  
    @camry.adopt(@hoosier)
    @jolene.adopt(@nebraska) 
    @jr.adopt(@johnson)
    @jr.adopt(@falafel)
  end

  it 'exists' do
    expect(@daycare).to be_a DayCare
    expect(@daycare_2).to be_a DayCare
  end
end