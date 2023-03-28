require 'spec_helper'

RSpec.describe Groomer do
  before(:each) do
    @groomer = Groomer.new(name)
  end

  describe '#initialize' do 
    it 'exists' do
      expect(@groomer).to be_a Groomer
    end
  end


end