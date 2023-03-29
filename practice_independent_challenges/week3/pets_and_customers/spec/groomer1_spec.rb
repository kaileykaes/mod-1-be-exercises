require 'spec_helper'

RSpec.describe Groomer do
  before(:each) do
    @groomer = Groomer.new('Judy')
  end

  it 'exists' do
    expect(@groomer).to be_a Groomer
  end

  it 'has a name' do 
    expect(@groomer.name).to eq('Judy')
  end
end