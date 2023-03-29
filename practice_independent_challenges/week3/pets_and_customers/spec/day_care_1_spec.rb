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
  end

  it 'has a name' do 
    expect(@daycare.name).to eq('Bark Bliss')
  end

  it 'starts without customers' do 
    expect(@daycare.customers).to eq([])
  end

  it 'can add customers' do 
    @daycare.add_customer(@joel)
    @daycare.add_customer(@mary)
    @daycare.add_customer(@camry)
    @daycare.add_customer(@jolene)
    @daycare.add_customer(@jr)
    expect(@daycare.customers).to eq([@joel, @mary, @camry, @jolene, @jr])
  end

  it 'customers can have pets' do 
    @daycare.add_customer(@joel)
    @daycare.add_customer(@mary)
    @daycare.add_customer(@camry)
    @daycare.add_customer(@jolene)
    @daycare.add_customer(@jr)
    expect(@daycare.customers[0].pets).to eq([@samson, @lucy])
    expect(@daycare.customers[1].pets).to eq([@paddington])
    expect(@daycare.customers[2].pets).to eq([@kevin, @hoosier])
    expect(@daycare.customers[3].pets).to eq([@nebraska])
    expect(@daycare.customers[4].pets).to eq([@johnson, @falafel])
  end

  it 'finds customers by id' do 
    @daycare.add_customer(@joel)
    @daycare.add_customer(@mary)
    @daycare.add_customer(@camry)
    @daycare.add_customer(@jolene)
    @daycare.add_customer(@jr)
    expect(@daycare.find_by_id(1)).to eq(@camry)
    expect(@daycare.find_by_id(2)).to eq(@joel)
    expect(@daycare.find_by_id(3)).to eq(@jolene)
    expect(@daycare.find_by_id(4)).to eq(@jr)
    expect(@daycare.find_by_id(5)).to eq(@mary)
  end

  it 'finds unfed pets' do 
    @daycare.add_customer(@joel)
    @daycare.add_customer(@mary)
    @daycare.add_customer(@camry)
    @daycare.add_customer(@jolene)
    @daycare.add_customer(@jr)
    @samson.feed
    @lucy.feed
    @paddington.feed
    @nebraska.feed
    expect(@daycare.unfed_pets).to eq([@kevin, @hoosier, @johnson, @falafel])
  end
end