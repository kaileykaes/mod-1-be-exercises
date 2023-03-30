require 'spec_helper'

RSpec.describe Groomer do
  before(:each) do
    @groomer = Groomer.new('Judy')

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
    expect(@groomer).to be_a Groomer
  end

  it 'has a name' do 
    expect(@groomer.name).to eq('Judy')
  end

  it 'starts with no customers' do 
    expect(@groomer.customers).to eq([])
  end

  it 'can add customers' do 
    @groomer.add_customer(@joel)
    @groomer.add_customer(@camry)
    @groomer.add_customer(@jolene)
    @groomer.add_customer(@mary)
    @groomer.add_customer(@jr)
    expect(@groomer.customers).to eq([@joel, @camry, @jolene, @mary, @jr])
  end

  it 'can find customers with outstanding balances' do 
    @groomer.add_customer(@joel)
    @groomer.add_customer(@camry)
    @groomer.add_customer(@jolene)
    @groomer.add_customer(@mary)
    @groomer.add_customer(@jr)
    @joel.charge(13)
    @camry.charge(30)
    @mary.charge(500)
    expect(@groomer.customers_with_oustanding_balances).to eq([@joel, @camry, @mary])
  end

  it 'can count pets by type' do 
    @groomer.add_customer(@joel)
    @groomer.add_customer(@camry)
    @groomer.add_customer(@jolene)
    @groomer.add_customer(@mary)
    @groomer.add_customer(@jr)
    expect(@groomer.count_pets_by_type(:dog)).to eq(3)
    expect(@groomer.count_pets_by_type(:ferret)).to eq(1)
    expect(@groomer.count_pets_by_type(:bear)).to eq(1)
    expect(@groomer.count_pets_by_type(:cat)).to eq(3)
  end

  it 'starts with no charges' do 
    expect(@groomer.invoices).to eq([])
  end

  it '#invoice' do 
    @groomer.invoice(@joel, 'nail trim', @lucy, 20)
    expect(@groomer.invoices[0]).to be_a Charge
    expect(@joel.outstanding_balance).to eq(20)
    expect(@groomer.invoices[0].pet).to eq(@lucy)
    expect(@groomer.invoices[0].service).to eq('nail trim')
  end
end