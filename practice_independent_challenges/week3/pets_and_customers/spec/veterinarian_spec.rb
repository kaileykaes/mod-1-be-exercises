require 'spec_helper'

RSpec.describe Veterinarian do
  before(:each) do
    @veterinarian = Veterinarian.new('Dr. Dodson')

    @joel = Customer.new("Joel", 2) 
    @mary = Customer.new('Mary', 5)
    @camry = Customer.new('Camry', 1)
    @jolene = Customer.new('Jolene', 3)
    @jr = Customer.new('J.R', 4)

    @samson = Pet.new({name: "Samson", type: :dog, age: 2})    
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
    expect(@veterinarian).to be_a Veterinarian
  end

  it 'has a name' do 
    expect(@veterinarian.name).to eq('Dr. Dodson')
  end

  it 'starts without clientele' do 
    expect(@veterinarian.customers).to eq([])
  end

  it 'can add customers' do 
    @veterinarian.add_customer(@joel)
    @veterinarian.add_customer(@mary)
    @veterinarian.add_customer(@camry)
    @veterinarian.add_customer(@jolene)
    @veterinarian.add_customer(@jr)
    expect(@veterinarian.customers).to eq([@joel, @mary, @camry, @jolene, @jr])
  end

  it 'customers can have pets' do 
    @veterinarian.add_customer(@joel)
    @veterinarian.add_customer(@mary)
    @veterinarian.add_customer(@camry)
    @veterinarian.add_customer(@jolene)
    @veterinarian.add_customer(@jr)
    expect(@veterinarian.customers[0].pets).to eq([@samson, @lucy])
    expect(@veterinarian.customers[1].pets).to eq([@paddington])
    expect(@veterinarian.customers[2].pets).to eq([@kevin, @hoosier])
    expect(@veterinarian.customers[3].pets).to eq([@nebraska])
    expect(@veterinarian.customers[4].pets).to eq([@johnson, @falafel])
  end

  it 'can find all pets sorted by age' do
    @veterinarian.add_customer(@joel)
    @veterinarian.add_customer(@mary)
    @veterinarian.add_customer(@camry)
    @veterinarian.add_customer(@jolene)
    @veterinarian.add_customer(@jr)
    expect(@veterinarian.sort_pets).to eq([@hoosier, @lucy, @falafel, @nebraska, @paddington, @kevin, @johnson, @samson])
  end

  it 'can count pets of customers' do 
    @veterinarian.add_customer(@joel)
    @veterinarian.add_customer(@mary)
    @veterinarian.add_customer(@camry)
    @veterinarian.add_customer(@jolene)
    @veterinarian.add_customer(@jr)
    expect(@veterinarian.count_pets(@joel)).to eq(2)
    expect(@veterinarian.count_pets(@mary)).to eq(1)
    expect(@veterinarian.count_pets(@camry)).to eq(2)
    expect(@veterinarian.count_pets(@jolene)).to eq(1)
    expect(@veterinarian.count_pets(@jr)).to eq(2)

  end
end