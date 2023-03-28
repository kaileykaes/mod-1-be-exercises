require 'spec_helper'

RSpec.describe Groomer do
  before(:each) do
    @groomer = Groomer.new('Judy')
  end

  describe '#initialize' do 
    it 'exists' do
      expect(@groomer).to be_a Groomer
    end

    it 'has attribute' do 
      expect(@groomer.name).to eq('Judy')
    end
  end


end