require 'spec_helper'

RSpec.describe Charge do
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
    @charge_1 = Charge.new({service: 'nail trim', customer: @joel, pet: @samson, amount: 20})
  end

  it 'exists' do
    expect(@charge_1).to be_a Charge
  end

  it 'has attributes' do 
    expect(@charge_1.service).to eq('nail trim')
    expect(@charge_1.customer).to eq(@joel)
    expect(@charge_1.pet).to eq(@samson)
    expect(@charge_1.amount).to eq(20)
  end
end