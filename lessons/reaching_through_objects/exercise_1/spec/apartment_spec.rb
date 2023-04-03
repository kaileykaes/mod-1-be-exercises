require 'spec_helper'

RSpec.describe Apartment do
  before(:each) do
    @apartment = Apartment.new
    @bathroom = Room.new('bathroom')
  end

  it 'exists' do
    expect(@apartment).to be_a Apartment
  end

  it '#is_rented' do 
    expect(@apartment.is_rented?).to be false
    @apartment.rent
    expect(@apartment.is_rented?).to be true
  end

  it 'starts with no rooms' do 
    expect(@apartment.rooms).to eq([])
  end

  it 'can add rooms' do 
    @apartment.add_room(@bathroom)
    @apartment.add_room(Room.new("laundry"))
    @apartment.add_room(Room.new("kitchen"))
    @apartment.add_room(Room.new("bedroom"))
    expect(@apartment.rooms).to_not be_empty
  end

  it 'can list rooms alphabetically' do 
    @apartment.add_room(@bathroom)
    @apartment.add_room(Room.new("laundry"))
    @apartment.add_room(Room.new("kitchen"))
    @apartment.add_room(Room.new("bedroom"))
    expect(@apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
  end
end