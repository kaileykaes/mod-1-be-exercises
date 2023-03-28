require 'spec_helper'

RSpec.describe Pet do
  before(:each) do
    @samson = Pet.new({name: "Samson", type: :dog, age: 3})    
  end

  describe '#initialize' do 
    it 'exists' do
      expect(@samson).to be_a(Pet)
    end

    it '#has attr' do 
      expect(@samson.name).to eq('Samson')
      expect(@samson.type).to eq(:dog)
      expect(@samson.age).to eq(3)
    end
  end

  describe 'feeding' do 
    it '#fed?' do 
      expect(@samson.fed?).to be false
    end
    
    it '#feed' do 
      @samson.feed
      expect(@samson.fed?).to be true
  
    end
  end
end