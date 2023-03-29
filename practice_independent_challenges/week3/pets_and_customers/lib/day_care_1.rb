class DayCare
  attr_reader :name, 
              :customers
  
  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end

  def find_by_id(id)
    got_it = customers.find do |customer|
      customer.id == id
    end
    got_it
  end

  def unfed_pets
    pets = customers.map do |customer|
      customer.pets
    end
    unfed = pets.flatten.find_all do |pet|
      pet.fed? != true
    end
    unfed
  end
end