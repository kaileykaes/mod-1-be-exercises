require 'rspec'
require './lib/person'
require './lib/medusa'

require 'spec_helper'

RSpec.describe Person do
  before(:each) do
    @victim = Person.new('Perseus')
  end

  it 'exists' do
    expect(@victim).to be_a Person
  end

  it 'has attributes' do
    expect(@victim.name).to eq('Perseus')
  end
end