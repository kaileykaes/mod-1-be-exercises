class Groomer
  attr_reader :name, 
              :customers
  
  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customer(customer)
    customers << customer
  end

  def customers_with_oustanding_balances
    indebted_customers = customers.find_all do |customer|
      customer.outstanding_balance > 0
    end
    indebted_customers
  end

  def count_pets_by_type(type)
    all_pets = []
    customers.each do |customer|
      all_pets << customer.pets
    end
    type_pets = all_pets.flatten.find_all do |pet|
      pet.type == type
    end
    type_pets.length
  end
end