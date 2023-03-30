class Charge
  attr_reader :service, 
              :customer, 
              :pet, 
              :amount
  
  def initialize(attributes)
    @service = attributes[:service]
    @customer = attributes[:customer]
    @pet = attributes[:pet]
    @amount = attributes[:amount]
  end
end