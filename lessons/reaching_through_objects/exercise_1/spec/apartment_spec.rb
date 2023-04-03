require 'spec_helper'

RSpec.describe Apartment do
  before(:each) do
    @apartment = Apartment.new
  end

  it 'exists' do
    expect(@apartment).to be_a Apartment
  end

  it '#is_rented' do 
    expect(@apartment.is_rented?).to be false
    @apartment.rent
    expect(@apartment.is_rented?).to be true
  end

end