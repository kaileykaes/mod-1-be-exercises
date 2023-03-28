class Groomer
  attr_reader :name, 
              :customers
  
  def initialize(name)
    @name = name
    @customers = Hash.new {|hash_obj, key| hash_obj[key] = []}
  end

  def add_customer(customer)
    @customers['Alice'] = 0 
  end

  def charge_customer(customer, cost)
    @customers[customer] << cost.delete('$').to_f.round(2)
  end
end