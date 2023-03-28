require 'spec_helper'

RSpec.describe Groomer do
  before(:each) do
    @groomer = Groomer.new('Judy')
  end

  describe '#initialize' do 
    it 'exists' do
      expect(@groomer).to be_a Groomer
    end

    it 'has attributes' do 
      expect(@groomer.name).to eq('Judy')
      expect(@groomer.customers).to be_a Hash
    end
  end
  
  describe '#add_customer' do 
    it 'can add a customer' do 
      @groomer.add_customer('Alice')
      expect(@groomer.customers).to eq({'Alice' => 0})
    end
  end
end