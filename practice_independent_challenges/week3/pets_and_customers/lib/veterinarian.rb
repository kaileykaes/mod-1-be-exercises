class Veterinarian
  attr_reader :name, 
              :customers
  
  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end

  def sort_pets
    pets = @customers.map do |customer|
      customer.pets
    end
    sorted_pets = pets.flatten.sort_by do |pet|
      pet.age
    end
    sorted_pets.reverse
  end

  def count_pets(customer)
    customer.pets.length
  end
end