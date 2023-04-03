require 'spec_helper'

RSpec.describe Room do
  before(:each) do
    @bathroom = Room.new("bathroom")
  end

  it 'exists' do
    expect(@bathroom).to be_a(Room)
  end
  
  it 'has a name' do 
    expect(@bathroom.name).to eq('bathroom')
  end
end