class Street
  attr_reader :name
  
  def initialize(name)
    @name = name
    @building_datum = []
  end

  def add_building(bldg)
    @building_datum << bldg
  end

  def buildings 
   buildings = @building_datum.map do |building|
    building.building_name
   end
  end

  def number_of_available_apartments
    apartments = @building_datum.map do |building|
      building.apartments
    end
    unrented = apartments.flatten.find_all do |apartment|
      apartment.rented == false
    end
    unrented.length
  end

  def list_available_apartments
    total_apartments_info = Hash.new
    apartments = @building_datum.map do |building|
      total_apartments_info[building.building_name] = building.apartments.map {|apartment| apartment.list_rooms_by_name_alphabetically}.flatten
    end
    total_apartments_info
  end
end