require 'spec_helper'

RSpec.describe Street do
  before(:each) do
    @adlington = Street.new("Adlington Road")
    @bldg = Building.new("623", "Savills Apartment Building")
    @zebra = Building.new("123", "Zebra Apartments")
    @apt_1 = Apartment.new
    @apt_2 = Apartment.new
    @apt_5 = Apartment.new
    @bldg.add_apartment(@apt_1)
    @bldg.add_apartment(@apt_2)
    @zebra.add_apartment(@apt_5)
    @apt_1.add_room(Room.new("laundry"))
    @apt_1.add_room(Room.new("kitchen"))
    @apt_1.add_room(Room.new("bedroom"))
    @apt_1.add_room(Room.new("bathroom"))
    @apt_2.add_room(Room.new('bathroom'))
    @apt_2.add_room(Room.new('bedroom'))
    @apt_2.add_room(Room.new('laundry'))
    @apt_5.add_room(Room.new("bedroom"))
    @apt_5.add_room(Room.new("laundry"))
  end

  it 'exists' do
    expect(@adlington).to be_a Street
  end
  
  it 'has a name' do 
    expect(@adlington.name).to eq("Adlington Road")
  end

  it 'adds owned buildings' do 
    @adlington.add_building(@bldg)
    @adlington.add_building(@zebra)
    expect(@adlington.buildings).to eq(["Savills Apartment Building", "Zebra Apartments"])
  end

  it 'states non-rented apartments' do 
    @adlington.add_building(@bldg)
    @adlington.add_building(@zebra)
    expect(@adlington.number_of_available_apartments).to eq(3)
  end

  it '#list_available_apartments' do 
    @adlington.add_building(@bldg)
    @adlington.add_building(@zebra)
    expect(@adlington.list_available_apartments).to eq({
      "Zebra Apartments" => ["bedroom", "laundry"],
      "Savills Apartment Building" => ["bathroom", "bedroom", "kitchen", "laundry"]
    }
  end
end